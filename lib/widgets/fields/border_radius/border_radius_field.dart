import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/drop_down_button.dart';
import 'package:flutter_quest/widgets/fields/border_radius/border_radius_layouts.dart';

enum BorderRadiusType {
  all,
  circular,
  vertical,
  horizontal,
  only,
  zero,
}

class BorderRadiusField extends StatefulWidget {
  final void Function(BorderRadius) onChanged;
  final BorderRadius value;

  const BorderRadiusField({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  State<BorderRadiusField> createState() => _BorderRadiusFieldState();
}

class _BorderRadiusFieldState extends State<BorderRadiusField> {
  BorderRadiusType selectedOption = BorderRadiusType.all;
  late Widget selectedLayout;

  @override
  void initState() {
    super.initState();
    selectedLayout = BorderRadiusAllLayout(
      onChanged: widget.onChanged,
      value: widget.value,
    );
  }

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        AppDropDownButton(
          selectedOption: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption = value!;
            });
          },
          width: selectedOption == BorderRadiusType.circular ||
                  selectedOption == BorderRadiusType.zero
              ? double.infinity
              : 150,
          items: [
            DropdownMenuItem<BorderRadiusType>(
              onTap: () => selectedLayout = BorderRadiusAllLayout(
                onChanged: widget.onChanged,
                value: widget.value,
              ),
              value: BorderRadiusType.all,
              child: const Padding(
                padding: EdgeInsets.only(left: 8, bottom: 3),
                child: Text("All"),
              ),
            ),
            DropdownMenuItem<BorderRadiusType>(
              onTap: () => selectedLayout = BorderRadiusCircularLayout(
                onChanged: widget.onChanged,
                value: widget.value,
              ),
              value: BorderRadiusType.circular,
              child: const Padding(
                padding: EdgeInsets.only(left: 8, bottom: 5),
                child: Text("Circular"),
              ),
            ),
            DropdownMenuItem<BorderRadiusType>(
              onTap: () => selectedLayout = BorderRadiusVerticalLayout(
                onChanged: widget.onChanged,
                value: widget.value,
              ),
              value: BorderRadiusType.vertical,
              child: const Padding(
                padding: EdgeInsets.only(left: 8, bottom: 5),
                child: Text("Vertical"),
              ),
            ),
            DropdownMenuItem<BorderRadiusType>(
              onTap: () => selectedLayout = BorderRadiusHorizontalLayout(
                onChanged: widget.onChanged,
                value: widget.value,
              ),
              value: BorderRadiusType.horizontal,
              child: const Padding(
                padding: EdgeInsets.only(left: 8, bottom: 5),
                child: Text("Horizontal"),
              ),
            ),
            DropdownMenuItem<BorderRadiusType>(
              onTap: () => selectedLayout = BorderRadiusOnlyLayout(
                onChanged: widget.onChanged,
                value: widget.value,
              ),
              value: BorderRadiusType.only,
              child: const Padding(
                padding: EdgeInsets.only(left: 8, bottom: 5),
                child: Text("Only"),
              ),
            ),
            DropdownMenuItem<BorderRadiusType>(
              onTap: () {
                selectedLayout = const SizedBox();
                widget.onChanged(BorderRadius.zero);
              },
              value: BorderRadiusType.zero,
              child: const Padding(
                padding: EdgeInsets.only(left: 8, bottom: 5),
                child: Text("Zero"),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
              top: selectedOption == BorderRadiusType.circular ? 45.0 : 0.0),
          child: selectedLayout,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
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
  late Widget selectedAllLayout;
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {

    Border buttonBorder = Border.all(
      width: 1.0,
      color: isHovered
          ? const Color(0xFF0099FF) : const Color(0xFF35363A),
    );

    return Wrap(
      children: [
        MouseRegion(
          onEnter: (v) {
            setState(() {
              isHovered = true;
            });
          },
          onExit: (v) {
            setState(() {
              isHovered = false;
            });
          },
          child: Container(
            height: 30,
            width: 134,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: const BorderRadius.all(Radius.circular(6.0)),
              border: buttonBorder,
            ),
            child: DropdownButton<BorderRadiusType>(
              icon: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(Icons.keyboard_arrow_down),
              ),
              iconSize: 12,
              iconEnabledColor: const Color(0xFFFFFFFF),
              focusColor: Colors.transparent,
              underline: const SizedBox(),
              alignment: Alignment.centerLeft,
              value: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                });
              },
              items: [
                DropdownMenuItem<BorderRadiusType>(
                  onTap: () {
                    selectedAllLayout = BorderRadiusAllLayout(onChanged: widget.onChanged);
                  },
                  value: BorderRadiusType.all,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 3),
                    child: Text("All"),
                  ),
                ),
                DropdownMenuItem<BorderRadiusType>(
                  onTap: () {
                    selectedAllLayout = BorderRadiusCircularLayout(onChanged: widget.onChanged);
                  },
                  value: BorderRadiusType.circular,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 5),
                    child: Text("Circular"),
                  ),
                ),
                DropdownMenuItem<BorderRadiusType>(
                  onTap: () {
                    selectedAllLayout = const SizedBox();
                  },
                  value: BorderRadiusType.vertical,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 5),
                    child: Text("Vertical"),
                  ),
                ),
                DropdownMenuItem<BorderRadiusType>(
                  onTap: () {
                    selectedAllLayout = const SizedBox();
                  },
                  value: BorderRadiusType.horizontal,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 5),
                    child: Text("Horizontal"),
                  ),
                ),
                DropdownMenuItem<BorderRadiusType>(
                  onTap: () {
                    selectedAllLayout = const SizedBox();
                  },
                  value: BorderRadiusType.only,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 5),
                    child: Text("Only"),
                  ),
                ),
                DropdownMenuItem<BorderRadiusType>(
                  onTap: () {
                    selectedAllLayout = const SizedBox();
                  },
                  value: BorderRadiusType.zero,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 5),
                    child: Text("Zero"),
                  ),
                ),
              ],
            ),
          ),
        ),
        selectedAllLayout,
      ],
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return this[0].toUpperCase() + this.substring(1);
  }
}
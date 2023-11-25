import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';
import 'package:flutter_quest/widgets/drop_down_button.dart';

enum BoxBorderType {
  only,
  all,
  symmetric,
  side,
}

class BoxBorderField extends PropertyWidget<BoxBorder> {
  const BoxBorderField({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return _BoxBorderField(
      onChanged: onChanged,
      value: value,
    );
  }
}

class _BoxBorderField extends StatefulWidget {
  final void Function(BoxBorder) onChanged;
  final BoxBorder value;

  const _BoxBorderField({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  State<_BoxBorderField> createState() => _BoxBorderFieldState();
}

class _BoxBorderFieldState extends State<_BoxBorderField> {
  BoxBorderType selectedOption = BoxBorderType.all;
  late Widget selectedLayout;

  @override
  void initState() {
    super.initState();
    selectedLayout = _BoxBorderLayout(
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
          items: [
            DropdownMenuItem<BoxBorderType>(
              onTap: () => selectedLayout = _BoxBorderLayout(
                onChanged: widget.onChanged,
                value: widget.value,
              ),
              value: BoxBorderType.only,
              child: const Padding(
                padding: EdgeInsets.only(left: 8, bottom: 3),
                child: Text("All"),
              ),
            ),
            DropdownMenuItem<BoxBorderType>(
              onTap: () => selectedLayout = _BoxBorderLayout(
                onChanged: widget.onChanged,
                value: widget.value,
              ),
              value: BoxBorderType.all,
              child: const Padding(
                padding: EdgeInsets.only(left: 8, bottom: 3),
                child: Text("All"),
              ),
            ),
            DropdownMenuItem<BoxBorderType>(
              onTap: () => selectedLayout = _BoxBorderLayout(
                onChanged: widget.onChanged,
                value: widget.value,
              ),
              value: BoxBorderType.symmetric,
              child: const Padding(
                padding: EdgeInsets.only(left: 8, bottom: 3),
                child: Text("All"),
              ),
            ),
            DropdownMenuItem<BoxBorderType>(
              onTap: () => selectedLayout = _BoxBorderLayout(
                onChanged: widget.onChanged,
                value: widget.value,
              ),
              value: BoxBorderType.side,
              child: const Padding(
                padding: EdgeInsets.only(left: 8, bottom: 3),
                child: Text("All"),
              ),
            ),
          ],
        ),
        selectedLayout,
      ],
    );
  }
}

class _BoxBorderLayout extends StatefulWidget {
  final void Function(BoxBorder) onChanged;
  final BoxBorder value;

  const _BoxBorderLayout({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  State<_BoxBorderLayout> createState() => _BoxBorderLayoutState();
}

class _BoxBorderLayoutState extends State<_BoxBorderLayout> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class BoxBorderPreviewer extends StatelessWidget {
  const BoxBorderPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<BoxBorder>(
      values: [
        Border.all(color: Colors.black, width: 2.0),
        const Border(
          top: BorderSide.none,
          right: BorderSide.none,
          bottom: BorderSide.none,
          left: BorderSide.none,
        ),
      ],
      propertyBuilder: (onChanged, value) {
        return BoxBorderField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

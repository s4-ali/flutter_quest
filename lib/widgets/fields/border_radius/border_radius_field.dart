import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';
import 'package:flutter_quest/widgets/fields/border_radius/dropdown.dart';

import 'border_radius_types/all.dart';
import 'border_radius_types/circular.dart';
import 'border_radius_types/horizontal.dart';
import 'border_radius_types/only.dart';
import 'border_radius_types/vertical.dart';
import 'radius_field.dart';

enum BorderRadiusType {
  all,
  circular,
  vertical,
  horizontal,
  only,
  zero,
}

class BorderRadiusField extends PropertyWidget<BorderRadius> {
  const BorderRadiusField({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return _BorderRadiusField(
      onChanged: onChanged,
      value: value,
    );
  }
}

class _BorderRadiusField extends StatefulWidget {
  final void Function(BorderRadius) onChanged;
  final BorderRadius value;

  const _BorderRadiusField({
    required this.onChanged,
    required this.value,
  });

  @override
  State<_BorderRadiusField> createState() => _BorderRadiusFieldState();
}

class _BorderRadiusFieldState extends State<_BorderRadiusField> {
  BorderRadiusType selectedOption = BorderRadiusType.all;
  BorderRadiusCornerType borderRadiusCornerType =
      BorderRadiusCornerType.circular;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BorderRadiusTypeDropdown(
          value: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption = value;
            });
          },
        ),
        const SizedBox(
          height: 8,
        ),
        borderRadiusLayout(),
      ],
    );
  }

  void onBorderRadiusCornerTypeChanged(BorderRadiusCornerType type) {
    setState(() {
      borderRadiusCornerType = type;
    });
  }

  Widget borderRadiusLayout() {
    switch (selectedOption) {
      case BorderRadiusType.all:
        return BorderRadiusAll(
          value: widget.value,
          onChanged: widget.onChanged,
        );
      case BorderRadiusType.circular:
        return BorderRadiusCircular(
          value: widget.value,
          onChanged: widget.onChanged,
        );
      case BorderRadiusType.vertical:
        return BorderRadiusVertical(
          value: widget.value,
          onChanged: widget.onChanged,
        );
      case BorderRadiusType.horizontal:
        return BorderRadiusHorizontal(
          value: widget.value,
          onChanged: widget.onChanged,
        );
      case BorderRadiusType.only:
        return BorderRadiusOnly(
          value: widget.value,
          onChanged: widget.onChanged,
        );
      case BorderRadiusType.zero:
        return const SizedBox();
    }
  }
}

class BorderRadiusPreviewer extends StatelessWidget {
  const BorderRadiusPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<BorderRadius>(
      title: "Border Radius",
      values: [
        const BorderRadius.all(Radius.circular(30)),
        BorderRadius.circular(20),
        BorderRadius.zero
      ],
      propertyBuilder: (onChanged, value) {
        return BorderRadiusField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/text_radio_button.dart';

import 'text_field.dart';

enum BorderRadiusCornerType {
  circular,
  elliptical,
}

extension BorderRadiusCornerTypeExtension on BorderRadiusCornerType {
  bool get isCircular => this == BorderRadiusCornerType.circular;

  bool get isElliptical => this == BorderRadiusCornerType.elliptical;
}

class RadiusField extends StatefulWidget {
  final Radius value;
  final void Function(Radius) onChanged;

  const RadiusField({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  State<RadiusField> createState() => _RadiusFieldState();
}

class _RadiusFieldState extends State<RadiusField> {
  BorderRadiusCornerType borderRadiusCornerType =
      BorderRadiusCornerType.circular;

  late double xRadius;
  late double yRadius;

  @override
  void initState() {
    super.initState();
    xRadius = widget.value.x;
    yRadius = widget.value.y;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextRadioButton<BorderRadiusCornerType>(
                option: BorderRadiusCornerType.circular,
                onChanged: onBorderRadiusCornerTypeChanged,
                isSelected:
                borderRadiusCornerType == BorderRadiusCornerType.circular,
                title: "Circular",
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: TextRadioButton<BorderRadiusCornerType>(
                option: BorderRadiusCornerType.elliptical,
                onChanged: onBorderRadiusCornerTypeChanged,
                isSelected:
                borderRadiusCornerType == BorderRadiusCornerType.elliptical,
                title: "Elliptical",
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        if (borderRadiusCornerType.isCircular)
          BorderRadiusTextField(
            value: widget.value.x,
            onChanged: (value) => widget.onChanged(Radius.circular(value)),
          )
        else
          Row(
            children: [
              Expanded(
                child: BorderRadiusTextField(
                  prefixText: "X",
                  value: xRadius,
                  onChanged: (value) {
                    xRadius = value;
                    _onChanged();
                  },
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: BorderRadiusTextField(
                  prefixText: "Y",
                  value: yRadius,
                  onChanged: (value) {
                    yRadius = value;
                    _onChanged();
                  },
                ),
              )
            ],
          )
      ],
    );
  }

  void onBorderRadiusCornerTypeChanged(BorderRadiusCornerType type) {
    setState(() {
      borderRadiusCornerType = type;
    });
  }

  void _onChanged() {
    widget.onChanged(Radius.elliptical(xRadius, yRadius));
  }
}

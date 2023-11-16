import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/radio_button.dart';

extension on Enum {
  String get iconPath {
    switch (this) {
      case Axis.vertical:
        return "assets/axisVertical.svg";
      case Axis.horizontal:
        return "assets/axisHorizontal.svg";
      default:
        return "";
    }
  }
}

class AxisField extends StatelessWidget {
  final void Function(Axis) onChanged;
  final Axis value;

  const AxisField({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final axis in Axis.values)
          AppRadioButton(
            isSelected: value == axis,
            iconPath: axis.iconPath,
            onSelected: () => onChanged(axis),
          ),
      ],
    );
  }
}

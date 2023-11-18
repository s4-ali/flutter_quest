import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/icon_options.dart';

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
    return IconOptions(
      onChanged: (dynamic val) => onChanged(val as Axis),
      value: value,
      options: Axis.values,
      iconPath: (dynamic value) => (value as Axis).iconPath,
    );
  }
}

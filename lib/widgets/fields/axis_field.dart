import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';
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

class AxisField extends PropertyWidget<Axis> {
  const AxisField({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return IconOptions(
      onChanged: (val) => onChanged(val),
      value: value,
      options: Axis.values,
      iconPath: (val) => (val).iconPath,
    );
  }
}

class AxisPreviewer extends StatelessWidget {
  const AxisPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<Axis>(
      title: "Axis",
      values: Axis.values,
      propertyBuilder: (onChanged, value) {
        return AxisField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

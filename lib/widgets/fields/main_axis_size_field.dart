import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/icon_options.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

extension on MainAxisSize{
  String get iconPath{
    switch (this) {
      case MainAxisSize.min:
        return "assets/minimum.svg";
      case MainAxisSize.max:
        return "assets/maximum.svg";
      default:
        return "";
    }
  }
}

class MainAxisSizeField extends PropertyWidget<MainAxisSize> {

  const MainAxisSizeField({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return IconOptions(
      onChanged: (dynamic val) => onChanged(val as MainAxisSize),
      value: value,
      options: MainAxisSize.values,
      iconPath: (dynamic value) => (value as MainAxisSize).iconPath,
    );
  }
}


class MainAxisSizePreviewer extends StatelessWidget {
  const MainAxisSizePreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<MainAxisSize>(
      title: "Main Axis Size",
      values: MainAxisSize.values,
      propertyBuilder: (onChanged, value) {
        return MainAxisSizeField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}
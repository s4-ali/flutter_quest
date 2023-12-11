import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/icon_options.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

extension on MainAxisAlignment {
  String get iconPath {
    switch (this) {
      case MainAxisAlignment.start:
        return "assets/startVertical.svg";
      case MainAxisAlignment.end:
        return "assets/endVertical.svg";
      case MainAxisAlignment.center:
        return "assets/center.svg";
      case MainAxisAlignment.spaceBetween:
        return "assets/spaceBetween.svg";
      case MainAxisAlignment.spaceAround:
        return "assets/spaceAround.svg";
      case MainAxisAlignment.spaceEvenly:
        return "assets/spaceEvenly.svg";
      default:
        return "";
    }
  }
}

class MainAxisAlignmentField extends PropertyWidget<MainAxisAlignment> {
  const MainAxisAlignmentField({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return IconOptions(
      onChanged: (val) => onChanged(val),
      value: value,
      options: MainAxisAlignment.values,
      iconPath: (val) => (val).iconPath,
    );
  }
}

class MainAxisAlignmentPreviewer extends StatelessWidget {
  const MainAxisAlignmentPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<MainAxisAlignment>(
      values: MainAxisAlignment.values,
      propertyBuilder: (onChanged, value) {
        return MainAxisAlignmentField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

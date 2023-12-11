import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';
import 'package:flutter_quest/widgets/icon_options.dart';

extension on TextDirection {
  String get iconPath {
    switch (this) {
      case TextDirection.ltr:
        return "assets/leftToRight.svg";
      case TextDirection.rtl:
        return "assets/rightToLeft.svg";
      default:
        return "";
    }
  }
}

class TextDirectionField extends PropertyWidget<TextDirection> {

  const TextDirectionField({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return IconOptions(
      onChanged: (dynamic val) => onChanged(val as TextDirection),
      value: value,
      options: TextDirection.values,
      iconPath: (dynamic value) => (value as TextDirection).iconPath,
    );
  }
}

class TextDirectionPreviewer extends StatelessWidget {
  const TextDirectionPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<TextDirection>(
      values: TextDirection.values,
      propertyBuilder: (onChanged, value) {
        return TextDirectionField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

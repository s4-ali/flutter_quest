import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';
import 'package:flutter_quest/widgets/icon_options.dart';

extension on VerticalDirection {
  String get iconPath {
    switch (this) {
      case VerticalDirection.down:
        return "assets/downDirection.svg";
      case VerticalDirection.up:
        return "assets/upDirection.svg";
      default:
        return "";
    }
  }
}

class VerticalDirectionField extends PropertyWidget<VerticalDirection> {
  const VerticalDirectionField({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return IconOptions(
      onChanged: (dynamic val) => onChanged(val as VerticalDirection),
      value: value,
      options: VerticalDirection.values,
      iconPath: (dynamic value) => (value as VerticalDirection).iconPath,
    );
  }
}

class VerticalDirectionPreviewer extends StatelessWidget {
  const VerticalDirectionPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<VerticalDirection>(
      values: VerticalDirection.values,
      propertyBuilder: (onChanged, value) {
        return VerticalDirectionField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

class BorderRadiusField extends PropertyWidget<BorderRadius> {
  const BorderRadiusField({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      fallbackHeight: 60,
    );
  }
}

class BorderRadiusPreviewer extends StatelessWidget {
  const BorderRadiusPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<BorderRadius>(
      values: [const BorderRadius.all(Radius.circular(30)), BorderRadius.circular(20), BorderRadius.zero],
      propertyBuilder: (onChanged, value) {
        return BorderRadiusField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

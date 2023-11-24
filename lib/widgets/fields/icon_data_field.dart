import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

class IconDataField extends PropertyWidget<IconData> {
  const IconDataField({
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

class IconDataPreviewer extends StatelessWidget {
  const IconDataPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<IconData>(
      values: const [
        Icons.favorite,
        Icons.circle,
        Icons.arrow_circle_right_sharp
      ],
      propertyBuilder: (onChanged, value) {
        return IconDataField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

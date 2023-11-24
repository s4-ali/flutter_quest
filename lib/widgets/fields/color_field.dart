import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

class ColorField extends PropertyWidget<Color> {
  const ColorField({
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

class ColorPreviewer extends StatelessWidget {
  const ColorPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<Color>(
      values: const [
        Colors.red,
        Colors.blue,
        Colors.green,
        Colors.blue,
      ],
      propertyBuilder: (onChanged, value) {
        return ColorField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

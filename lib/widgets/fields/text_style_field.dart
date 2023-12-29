import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

class TextStyleField extends PropertyWidget<TextStyle> {
  const TextStyleField({
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

class TextStylePreviewer extends StatelessWidget {
  const TextStylePreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<TextStyle>(
      title: "Text Style",
      values: const [
        TextStyle(
            color: Colors.black, fontSize: 24, fontStyle: FontStyle.italic),
        TextStyle(
          color: Colors.red,
          fontSize: 12,
          fontStyle: FontStyle.italic,
        )
      ],
      propertyBuilder: (onChanged, value) {
        return TextStyleField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

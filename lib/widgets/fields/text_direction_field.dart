import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

class TextDirectionField extends PropertyWidget<TextDirection> {

  const TextDirectionField({
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

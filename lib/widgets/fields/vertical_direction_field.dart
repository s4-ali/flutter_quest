import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

class VerticalDirectionField extends PropertyWidget<VerticalDirection> {
  const VerticalDirectionField({
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

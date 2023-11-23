import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

class BoxFitField extends PropertyWidget<BoxFit> {
  const BoxFitField({
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

class BoxFitPreviewer extends StatelessWidget {
  const BoxFitPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<BoxFit>(
      values: BoxFit.values,
      propertyBuilder: (onChanged, value) {
        return BoxFitField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

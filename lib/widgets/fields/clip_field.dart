import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

class ClipField extends PropertyWidget<Clip> {
  const ClipField({
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

class ClipPreviewer extends StatelessWidget {
  const ClipPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<Clip>(
      title: "Clip",
      values: Clip.values,
      propertyBuilder: (onChanged, value) {
        return ClipField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

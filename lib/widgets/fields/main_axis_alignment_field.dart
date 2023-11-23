import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

class MainAxisAlignmentField extends PropertyWidget<MainAxisAlignment> {
  const MainAxisAlignmentField({
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

class MainAxisAlignmentPreviewer extends StatelessWidget {
  const MainAxisAlignmentPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<MainAxisAlignment>(
      values: MainAxisAlignment.values,
      propertyBuilder: (onChanged, value) {
        return MainAxisAlignmentField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

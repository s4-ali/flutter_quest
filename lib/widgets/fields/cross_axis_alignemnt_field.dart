import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

class CrossAxisAlignmentField extends PropertyWidget<CrossAxisAlignment> {

  const CrossAxisAlignmentField({
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

class CrossAxisAlignmentPreviewer extends StatelessWidget {
  const CrossAxisAlignmentPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<CrossAxisAlignment>(
      values: CrossAxisAlignment.values,
      propertyBuilder: (onChanged, value) {
        return CrossAxisAlignmentField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

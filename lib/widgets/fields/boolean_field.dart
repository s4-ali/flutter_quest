import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

class BooleanField extends PropertyWidget<bool> {
  const BooleanField({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: (value) {
        onChanged(value);
      },
    );
  }
}

class BooleanPreviewer extends StatelessWidget {
  const BooleanPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<bool>(
      title: "Bool",
      values: const [true, false],
      propertyBuilder: (onChanged, value) {
        return BooleanField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';
import 'package:flutter_quest/widgets/text_field.dart';

class StringField extends PropertyWidget<String> {
  const StringField({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      label: "Value",
      onChanged: (value) => onChanged(ValueHolder(value, true)),
      controller: TextEditingController(
        text: value,
      ),
    );
  }
}

class StringFieldPreviewer extends StatelessWidget {
  const StringFieldPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<String>(
      title: "String",
      values: const ["String: 1", "String: 2", "String: 3"],
      propertyBuilder: (onChanged, value) {
        return StringField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

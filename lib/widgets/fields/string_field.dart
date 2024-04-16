import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';
import 'package:flutter_quest/widgets/text_field.dart';

class StringField extends PropertyWidget<String> {
  final String? title;

  const StringField({
    super.key,
    required super.onChanged,
    required super.value,
    this.title,
  });

  @override
  Widget build(BuildContext context) {

    return AppTextField(
      label: title ?? "Value",
      onChanged: onChanged,
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
          title: "Preview",
        );
      },
    );
  }
}

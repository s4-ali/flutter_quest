import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
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
      hintText: "Value",
      onChanged: onChanged,
      controller: TextEditingController(
        text: value,
      ),
    );
  }
}

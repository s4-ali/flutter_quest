import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/text_field.dart';

class StringField extends StatelessWidget {
  final void Function(String) onChanged;
  final String value;

  const StringField({
    super.key,
    required this.onChanged,
    required this.value,
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

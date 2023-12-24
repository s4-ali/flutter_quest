
import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/text_field.dart';

class BorderRadiusTextField extends StatelessWidget {
  final Function(double) onChanged;
  final String? label;
  final double value;

  const BorderRadiusTextField({
    super.key,
    required this.onChanged,
    required this.value,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      onChanged: (value) {
        onChanged(double.parse(value));
      },
      controller: TextEditingController(text: value.toStringAsFixed(2),),
      label: label,
    );
  }
}

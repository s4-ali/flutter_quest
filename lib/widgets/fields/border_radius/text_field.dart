
import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/text_field.dart';

class BorderRadiusTextField extends StatelessWidget {
  final Function(double) onChanged;
  final String? prefixText;
  final double value;

  const BorderRadiusTextField({
    super.key,
    required this.onChanged,
    required this.value,
    this.prefixText,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      onChanged: (value) {
        onChanged(double.parse(value));
      },
      controller: TextEditingController(text: value.toStringAsFixed(2),),
      prefix: prefixText == null ? null : Text("$prefixText  "),
    );
  }
}

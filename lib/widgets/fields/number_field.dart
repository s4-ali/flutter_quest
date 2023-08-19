import 'package:flutter/material.dart';

import '../text_field.dart';

class NumberField extends StatelessWidget {
  final String title;
  final Function(num) onChanged;
  final num value;

  const NumberField({
    super.key,
    required this.title,
    required this.onChanged,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      title: title,
      onChanged: (text) {
        final number = num.tryParse(text);
        if(number != null) {
          onChanged(number);
        }
      },
      suffixIcon: IconButton(
        onPressed: () {
          onChanged(double.infinity);
        },
        icon: const Icon(
          Icons.all_inclusive,
          color: Colors.white,
          size: 24,
        ),
      ),
      controller: TextEditingController(
        text: "${value.isInfinite ? "Infinite" : value}",
      ),
      keyboardType: TextInputType.number,
    );
  }
}

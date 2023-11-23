import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';

import '../text_field.dart';

class NumberField extends PropertyWidget<num> {

  const NumberField({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextField(
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

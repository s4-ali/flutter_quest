import 'package:flutter/material.dart';

class RangePickerNumberField extends StatelessWidget {
  final void Function(num) onChanged;
  final num value;

  const RangePickerNumberField({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      fallbackHeight: 60,
    );
  }
}

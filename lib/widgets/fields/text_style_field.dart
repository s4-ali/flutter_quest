import 'package:flutter/material.dart';

class TextStyleField extends StatelessWidget {
  final void Function(TextStyle) onChanged;
  final TextStyle value;

  const TextStyleField({
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

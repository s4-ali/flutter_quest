import 'package:flutter/material.dart';

class TextDirectionField extends StatelessWidget {
  final void Function(TextDirection) onChanged;
  final TextDirection value;

  const TextDirectionField({
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

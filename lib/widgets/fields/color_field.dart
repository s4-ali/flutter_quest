import 'package:flutter/material.dart';

class ColorField extends StatelessWidget {
  final void Function(Color) onChanged;
  final Color value;

  const ColorField({
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

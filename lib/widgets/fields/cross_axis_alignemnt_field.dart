import 'package:flutter/material.dart';

class CrossAxisAlignemntField extends StatelessWidget {
  final void Function(CrossAxisAlignment) onChanged;
  final CrossAxisAlignment value;

  const CrossAxisAlignemntField({
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

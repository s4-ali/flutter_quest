import 'package:flutter/material.dart';

class Matrix4Field extends StatelessWidget {
  final void Function(Matrix4) onChanged;
  final Matrix4 value;

  const Matrix4Field({
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

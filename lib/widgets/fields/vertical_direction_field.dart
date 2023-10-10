import 'package:flutter/material.dart';

class VerticalDirectionField extends StatelessWidget {
  final void Function(VerticalDirection) onChanged;
  final VerticalDirection value;

  const VerticalDirectionField({
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

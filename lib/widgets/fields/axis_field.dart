import 'package:flutter/material.dart';

class AxisField extends StatelessWidget {
  final void Function(Axis) onChanged;
  final Axis value;

  const AxisField({
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

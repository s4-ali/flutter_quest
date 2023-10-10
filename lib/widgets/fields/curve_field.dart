import 'package:flutter/material.dart';

class CurveField extends StatelessWidget {
  final void Function(Curve) onChanged;
  final Curve value;

  const CurveField({
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

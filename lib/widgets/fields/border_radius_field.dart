import 'package:flutter/material.dart';

class BorderRadiusField extends StatelessWidget {
  final void Function(BorderRadiusGeometry) onChanged;
  final BorderRadiusGeometry value;

  const BorderRadiusField({
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

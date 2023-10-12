import 'package:flutter/material.dart';

class ShapeBorderField extends StatelessWidget {
  final void Function(ShapeBorder) onChanged;
  final ShapeBorder value;

  const ShapeBorderField({
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

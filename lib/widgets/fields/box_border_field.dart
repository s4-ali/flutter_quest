import 'package:flutter/material.dart';

class BoxBorderField extends StatelessWidget {
  final void Function(BoxBorder) onChanged;
  final BoxBorder value;

  const BoxBorderField({
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

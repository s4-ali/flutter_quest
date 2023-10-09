import 'package:flutter/material.dart';

class BoxFitField extends StatelessWidget {
  final void Function(BoxFit) onChanged;
  final BoxFit value;

  const BoxFitField({
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

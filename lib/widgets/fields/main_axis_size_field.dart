import 'package:flutter/material.dart';

class MainAxisSizeField extends StatelessWidget {
  final void Function(MainAxisSize) onChanged;
  final MainAxisSize value;

  const MainAxisSizeField({
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

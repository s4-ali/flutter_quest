import 'package:flutter/material.dart';

class StringField extends StatelessWidget {
  final void Function(String) onChanged;
  final String value;

  const StringField({
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

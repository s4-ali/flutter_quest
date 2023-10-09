import 'package:flutter/material.dart';

class IconDataField extends StatelessWidget {
  final void Function(IconData) onChanged;
  final IconData value;

  const IconDataField({
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

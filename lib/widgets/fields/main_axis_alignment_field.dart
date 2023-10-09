import 'package:flutter/material.dart';

class MainAxisAlignmentField extends StatelessWidget {
  final void Function(MainAxisAlignment) onChanged;
  final MainAxisAlignment value;

  const MainAxisAlignmentField({
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

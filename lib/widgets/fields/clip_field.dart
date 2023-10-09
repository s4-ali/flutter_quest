import 'package:flutter/material.dart';

class ClipField extends StatelessWidget {
  final void Function(Clip) onChanged;
  final Clip value;

  const ClipField({
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

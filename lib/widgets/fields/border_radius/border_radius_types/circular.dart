import 'package:flutter/material.dart';

import '../text_field.dart';

class BorderRadiusCircular extends StatelessWidget {
  final BorderRadius value;
  final void Function(BorderRadius) onChanged;

  const BorderRadiusCircular({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return BorderRadiusTextField(
      value: value.bottomRight.x,
      onChanged: (value) => onChanged(BorderRadius.circular(value)),
    );
  }
}

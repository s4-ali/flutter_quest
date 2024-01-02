import 'package:flutter/material.dart';

import '../radius_field.dart';

class BorderRadiusAll extends StatelessWidget {
  final BorderRadius value;
  final void Function(BorderRadius) onChanged;

  const BorderRadiusAll({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return RadiusField(
      value: value.topRight,
      onChanged: (radius) => onChanged(BorderRadius.all(radius)),
    );
  }
}

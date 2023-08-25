import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/fields/padding_field/padding_field.dart';

class PaddingField extends StatelessWidget {
  final void Function(EdgeInsets) onChanged;
  final EdgeInsets value;

  const PaddingField({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return AppPaddingField(onChanged: onChanged, values: value);
  }
}

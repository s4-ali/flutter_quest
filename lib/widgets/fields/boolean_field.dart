import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/boolean_field.dart';

class BooleanField extends StatelessWidget {
  final String title;
  final Function(bool) onChanged;
  final bool initial;

  const BooleanField({
    super.key,
    required this.title,
    required this.onChanged,
    required this.initial,
  });

  @override
  Widget build(BuildContext context) {
    return AppSwitchField(
      title: title,
      initial: initial,
      onChanged: onChanged
    );
  }
}

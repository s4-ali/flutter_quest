import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';

class BorderRadiusField extends PropertyWidget<BorderRadius> {

  const BorderRadiusField({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      fallbackHeight: 60,
    );
  }
}

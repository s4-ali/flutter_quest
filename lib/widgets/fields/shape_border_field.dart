import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';

class ShapeBorderField extends PropertyWidget<ShapeBorder> {

  const ShapeBorderField({
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

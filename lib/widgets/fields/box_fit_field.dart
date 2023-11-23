import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';

class BoxFitField extends PropertyWidget<BoxFit> {

  const BoxFitField({
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

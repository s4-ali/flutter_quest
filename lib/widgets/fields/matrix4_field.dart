import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';

class Matrix4Field extends PropertyWidget<Matrix4> {

  const Matrix4Field({
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

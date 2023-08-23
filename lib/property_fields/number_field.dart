import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';

class NumberPropertyParams extends PropertyParams<num> {
  NumberPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class NumberPropertyField extends PropertyField<NumberPropertyParams, num> {
  NumberPropertyField(super.provider, super.params);

  @override
  Widget build(
    NumberPropertyParams params,
    Function(num) onChanged,
    num value,
  ) {
    return const Placeholder();
  }
}

extension NumberFieldPropertyProvider on PropertyProvider {
  num? numberField({
    required String id,
    required String title,
    num? initialValue,
    bool isOptional = true,
    num defaultValue = 0,
  }) {
    final params = NumberPropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue,
      initialValue: initialValue,
    );
    return NumberPropertyField(
      this,
      params,
    )();
  }

  double? heightField({
    String id = "height",
    String title = "Height",
    num? initialValue,
    bool isOptional = true,
    num defaultValue = 0,
  }) {
    return numberField(
      id: id,
      title: title,
      isOptional: isOptional,
      initialValue: initialValue,
      defaultValue: defaultValue,
    )?.toDouble();
  }

  double? widthField({
    String id = "height",
    String title = "Height",
    num? initialValue,
    bool isOptional = true,
    num defaultValue = 0,
  }) {
    return numberField(
      id: id,
      title: title,
      isOptional: isOptional,
      initialValue: initialValue,
      defaultValue: defaultValue,
    )?.toDouble();
  }
}

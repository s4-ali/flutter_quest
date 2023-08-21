import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';

class EnumPropertyParams<T> extends PropertyParams<T> {
  final List<T> values;

  EnumPropertyParams({
    required super.id,
    required super.value,
    required super.title,
    required this.values,
    required super.defaultValue,
    required super.isOptional,
  });
}

class EnumPropertyField<T> extends PropertyField<EnumPropertyParams, T> {
  EnumPropertyField(super.provider, super.params);

  @override
  Widget build(
    EnumPropertyParams params,
    Function(T?) onChanged,
    T? value,
  ) {
    return Text(params.values.toString());
  }
}

extension EnumFieldPropertyProvider on PropertyProvider {
  T enumOptions<T>({
    required String id,
    required String title,
    required T initial,
    required List<T> values,
  }) {
    final params = EnumPropertyParams<T>(
        id: id,
        value: initial,
        title: title,
        values: values,
        defaultValue: values[0],
        isOptional: false);
    return EnumPropertyField<T>(
      this,
      params,
    )()!;
  }
}

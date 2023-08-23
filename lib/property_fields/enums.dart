import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/drop_down_button.dart';

class EnumPropertyParams<T> extends PropertyParams<T> {
  final List<T> values;

  EnumPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
    required this.values,
  });
}

class EnumPropertyField<T> extends PropertyField<EnumPropertyParams<T>, T> {
  EnumPropertyField(super.provider, super.params);

  @override
  Widget build(
    EnumPropertyParams params,
    Function(T) onChanged,
    T value,
  ) {
    return DropDownField<T>(onChanged: onChanged, values: params.values, initial: params.value,);
  }
}

extension EnumFieldPropertyProvider on PropertyProvider {
  T? enumOptions<T>({
    required String id,
    required String title,
    required List<T> values,
    T? initialValue,
    bool isOptional = true,
    T? defaultValue,
  }) {
    final params = EnumPropertyParams<T>(
      id: id,
      initialValue: initialValue,
      title: title,
      values: values,
      defaultValue: defaultValue ?? values[0],
      isOptional: isOptional,
    );
    return EnumPropertyField<T>(
      this,
      params,
    )()!;
  }
}

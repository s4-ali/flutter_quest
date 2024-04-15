import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_params.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/list_field.dart';

class ListPropertyParams<T> extends BasePropertyParams<T> {
  final List<T> values;
  final String Function(T)? titleBuilder;

  ListPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
    required this.values,
    this.titleBuilder,
  });
}

class ListPropertyField<T> extends PropertyField<ListPropertyParams<T>, T> {
  ListPropertyField(super.provider, super.params);

  @override
  Widget build(
    ListPropertyParams<T> params,
    Function(ValueHolder<T>) onChanged,
    T value,
  ) {
    return ListField<T>(
      onChanged: onChanged,
      values: params.values,
      value: value,
      titleBuilder: params.titleBuilder,
    );
  }
}

extension ListFieldPropertyProvider on PropertiesNotifier {
  void listField<T>({
    required String id,
    required String title,
    required List<T> values,
    T? initialValue,
    bool isOptional = true,
    T? defaultValue,
    String Function(T)? titleBuilder,
  }) {
    final params = ListPropertyParams<T>(
      id: id,
      initialValue: initialValue,
      title: title,
      values: values,
      defaultValue: defaultValue ?? values[0],
      isOptional: isOptional,
      titleBuilder: titleBuilder,
    );

    ListPropertyField<T>(
      this,
      params,
    ).register();
  }
}

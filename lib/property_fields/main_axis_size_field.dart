import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/main_axis_size_field.dart';

class MainAxisSizePropertyParams extends PropertyParams<MainAxisSize> {
  MainAxisSizePropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class MainAxisSizePropertyField
    extends PropertyField<MainAxisSizePropertyParams, MainAxisSize> {
  MainAxisSizePropertyField(super.provider, super.params);

  @override
  Widget build(
    MainAxisSizePropertyParams params,
    Function(MainAxisSize) onChanged,
    MainAxisSize value,
  ) {
    return MainAxisSizeField(
      onChanged: onChanged,
      value: value,
    );
  }
}

extension MainAxisSizeFieldPropertyProvider on PropertyProvider {
  MainAxisSize? mainAxisSizeField({
    required String id,
    required String title,
    MainAxisSize? initialValue,
    bool isOptional = true,
    MainAxisSize defaultValue = MainAxisSize.max,
  }) {
    final params = MainAxisSizePropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue,
      initialValue: initialValue,
    );
    return MainAxisSizePropertyField(
      this,
      params,
    )();
  }
}

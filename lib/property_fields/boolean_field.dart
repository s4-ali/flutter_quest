import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/boolean_field.dart';

class BooleanPropertyParams extends PropertyParams<bool> {
  BooleanPropertyParams({
    required super.id,
    required super.initial,
    required super.title,
  });
}

class BooleanPropertyField extends PropertyField<BooleanPropertyParams, bool> {
  BooleanPropertyField(super.provider, super.params);

  @override
  Widget build(
      BooleanPropertyParams params,
      Function(bool) onChanged,
      bool value,
      ) {
    return BooleanField(
      title: params.title,
      onChanged: onChanged,
      initial: value,
    );
  }
}

extension BooleanFieldPropertyProvider on PropertyProvider {
  bool booleanField({
    required String id,
    required String title,
    required bool initial,
  }) {
    final params = BooleanPropertyParams(
      id: id,
      initial: initial,
      title: title,
    );
    return BooleanPropertyField(
      this,
      params,
    )();
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/boolean_field.dart';

/// These are the inputs required for a certain field,
/// for example title, max value, or any other property
/// that we would like to set in the field.
class BooleanPropertyParams extends PropertyParams<bool> {
  BooleanPropertyParams({
    required super.id,
    required super.initial,
    required super.title,
  });
}

/// Here we define the design of field and
/// and provide the onChanged and current value params
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
      onChanged: (value) {
        onChanged(value);
      },
      initial: value,
    );
  }
}

/// Helper method that register a property field inside property provider
extension BooleanFieldPropertyProvider on PropertyProvider {
  bool obscureField({
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
import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_params.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/boolean_field.dart';


class BooleanPropertyParams extends BasePropertyParams<bool> {
  BooleanPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class BooleanPropertyField
    extends PropertyField<BooleanPropertyParams, bool> {
  BooleanPropertyField(super.provider, super.params);

  @override
  bool get inline => true;

  @override
  Widget build(
    BooleanPropertyParams params,
    Function(bool) onChanged,
    bool value,
  ) {
    return BooleanField(onChanged: onChanged, value: value);
  }
}

extension BooleanFieldPropertyProvider on PropertiesNotifier {
  bool? booleanField({
    required String id,
    required String title,
    bool? initialValue,
    bool isOptional = true,
    bool defaultValue = false,
  }) {
    final params = BooleanPropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue,
      initialValue: initialValue,
    );
    return BooleanPropertyField(
      this,
      params,
    )();
  }
}

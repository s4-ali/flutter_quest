import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_params.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/string_field.dart';

class StringFieldPropertyParams extends BasePropertyParams<String> {
  StringFieldPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class StringFieldPropertyField
    extends PropertyField<StringFieldPropertyParams, String> {
  StringFieldPropertyField(super.provider, super.params);

  @override
  Widget build(
    StringFieldPropertyParams params,
    Function(String) onChanged,
    String value,
  ) {
    return StringField(
      onChanged: onChanged,
      value: value,
    );
  }
}

extension StringFieldFieldPropertyProvider on PropertiesNotifier {
  void stringField({
    required String id,
    required String title,
    String? initialValue,
    bool isOptional = true,
    String defaultValue = "",
  }) {
    final params = StringFieldPropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue,
      initialValue: initialValue,
    );
    StringFieldPropertyField(
      this,
      params,
    ).register();
  }
}

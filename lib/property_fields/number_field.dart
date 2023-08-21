import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/number_field.dart';

/// These are the inputs required for a certain field,
/// for example title, max value, or any other property
/// that we would like to set in the field.
class NumberPropertyParams extends PropertyParams<num> {
  NumberPropertyParams({
    required super.id,
    super.value,
    required super.title,
    super.defaultValue = 0,
    super.isOptional,
  });
}

/// Here we define the design of field and
/// and provide the onChanged and current value params
class TextFieldPropertyField extends PropertyField<NumberPropertyParams, num> {
  TextFieldPropertyField(super.provider, super.params);

  @override
  Widget build(
    NumberPropertyParams params,
    Function(num?) onChanged,
    num? value,
  ) {
    return NumberField(
      onChanged: onChanged,
      value: value!,
    );
  }
}

/// Helper method that register a property field inside property provider
extension TextFieldFieldPropertyProvider on PropertyProvider {
  num? numberField({
    required String id,
    required String title,
    num? value,
    bool isOptional = true,
    num defaultValue = 0,
  }) {
    final params = NumberPropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue,
      value: value,
    );

    return TextFieldPropertyField(
      this,
      params,
    )();
  }

  double? heightField({
    String id = "height",
    String title = "Height",
    num? value,
  }) {
    return numberField(
      id: id,
      title: title,
      value: value,
      defaultValue: 50,
    )?.toDouble();
  }

  double? widthField({
    String id = "width",
    String title = "Width",
    num? value,
  }) {
    return numberField(
      id: id,
      title: title,
      value: value,
      defaultValue: 50,
    )?.toDouble();
  }
}

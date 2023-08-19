import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/number_field.dart';

/// These are the inputs required for a certain field,
/// for example title, max value, or any other property
/// that we would like to set in the field.
class NumberPropertyParams extends PropertyParams<num> {
  NumberPropertyParams({
    required super.id,
    required super.initial,
    required super.title,
  });
}

/// Here we define the design of field and
/// and provide the onChanged and current value params
class TextFieldPropertyField extends PropertyField<NumberPropertyParams, num> {
  TextFieldPropertyField(super.provider, super.params);

  @override
  Widget build(
    NumberPropertyParams params,
    Function(num) onChanged,
    num value,
  ) {
    return NumberField(
      title: params.title,
      onChanged: onChanged,
      value: value,
    );
  }
}

/// Helper method that register a property field inside property provider
extension TextFieldFieldPropertyProvider on PropertyProvider {
  num numberField({
    required String id,
    required String title,
    required num initial,
  }) {
    final params = NumberPropertyParams(
      id: id,
      initial: initial,
      title: title,
    );
    return TextFieldPropertyField(
      this,
      params,
    )();
  }

  double heightField({
    String id = "height",
    String title = "Height",
    num initial = 100.0,
  }) {
    return numberField(id: id, title: title, initial: initial).toDouble();
  }

  double widthField({
    String id = "width",
    String title = "Width",
    num initial = 100.0,
  }) {
    return numberField(id: id, title: title, initial: initial).toDouble();
  }

  double padding({
    String id = "padding",
    String title = "Padding",
    num initial = 100.0,
  }) {
    return numberField(id: id, title: title, initial: initial).toDouble();
  }
}

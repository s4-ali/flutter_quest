import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/number_field.dart';

class NumberPropertyParams extends PropertyParams<num> {
  NumberPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class NumberPropertyField extends PropertyField<NumberPropertyParams, num> {
  NumberPropertyField(super.provider, super.params);

  @override
  Widget build(
    NumberPropertyParams params,
    Function(num) onChanged,
    num value,
  ) {
    return NumberField(
      key: ValueKey(params.id),
      onChanged: onChanged,
      value: value,
    );
  }
}

extension NumberFieldPropertyProvider on PropertyProvider {
  num? numberField({
    required String id,
    required String title,
    num? initialValue,
    bool isOptional = true,
    num defaultValue = 0,
  }) {
    final params = NumberPropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue,
      initialValue: initialValue,
    );
    return NumberPropertyField(
      this,
      params,
    )();
  }

  double? heightField({
    String id = "height",
    String title = "Height",
    num? initialValue,
    bool isOptional = true,
    num defaultValue = 0,
  }) {
    return numberField(
      id: id,
      title: title,
      isOptional: isOptional,
      initialValue: initialValue,
      defaultValue: defaultValue,
    )?.toDouble();
  }

  double? widthField({
    String id = "width",
    String title = "Width",
    num? initialValue,
    bool isOptional = true,
    num defaultValue = 0,
  }) {
    return numberField(
      id: id,
      title: title,
      isOptional: isOptional,
      initialValue: initialValue,
      defaultValue: defaultValue,
    )?.toDouble();
  }

  double? doubleField({
    String id = "doubleField",
    String title = "doubleField",
    num? initialValue,
    bool isOptional = true,
    num defaultValue = 0,
  }) {
    return numberField(
      id: id,
      title: title,
      isOptional: isOptional,
      initialValue: initialValue,
      defaultValue: defaultValue,
    )?.toDouble();
  }



  int? intField({
    String id = "intField",
    String title = "Int Field",
    num? initialValue,
    bool isOptional = true,
    num defaultValue = 0,
  }) {
    return numberField(
      id: id,
      title: title,
      isOptional: isOptional,
      initialValue: initialValue,
      defaultValue: defaultValue,
    )?.toInt();
  }


}

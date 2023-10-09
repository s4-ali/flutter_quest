import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/axis_field.dart';

class AxisPropertyParams extends PropertyParams<Axis> {
  AxisPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class AxisPropertyField
    extends PropertyField<AxisPropertyParams, Axis> {
  AxisPropertyField(super.provider, super.params);

  @override
  Widget build(
    AxisPropertyParams params,
    Function(Axis) onChanged,
    Axis value,
  ) {
    return AxisField(
      onChanged: onChanged,
      value: value,
    );
  }
}

extension AxisFieldPropertyProvider on PropertyProvider {
  Axis? axisField({
    required String id,
    required String title,
    Axis? initialValue,
    bool isOptional = true,
    Axis defaultValue = Axis.vertical,
  }) {
    final params = AxisPropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue,
      initialValue: initialValue,
    );
    return AxisPropertyField(
      this,
      params,
    )();
  }
}

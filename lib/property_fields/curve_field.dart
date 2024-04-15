import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_params.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/curve_field.dart';

class CurvePropertyParams extends BasePropertyParams<Curve> {
  CurvePropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class CurvePropertyField
    extends PropertyField<CurvePropertyParams, Curve> {
  CurvePropertyField(super.provider, super.params);

  @override
  Widget build(
    CurvePropertyParams params,
    Function(ValueHolder<Curve>) onChanged,
    Curve value,
  ) {
    return CurveField(
      onChanged: onChanged,
      value: value,
    );
  }
}

extension CurveFieldPropertyProvider on PropertiesNotifier {
  void curveField({
    required String id,
    required String title,
    Curve? initialValue,
    bool isOptional = true,
    Curve defaultValue = Curves.bounceIn,
  }) {
    final params = CurvePropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue,
      initialValue: initialValue,
    );
    CurvePropertyField(
      this,
      params,
    ).register();
  }
}

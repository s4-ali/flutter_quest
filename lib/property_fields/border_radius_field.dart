import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/border_radius_field.dart';

class BorderRadiusPropertyParams extends PropertyParams<BorderRadius> {
  BorderRadiusPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class BorderRadiusPropertyField
    extends PropertyField<BorderRadiusPropertyParams, BorderRadius> {
  BorderRadiusPropertyField(super.provider, super.params);

  @override
  Widget build(
    BorderRadiusPropertyParams params,
    Function(BorderRadius) onChanged,
    BorderRadius value,
  ) {
    return BorderRadiusField(
      onChanged: onChanged,
      value: value,
    );
  }
}

extension BorderRadiusFieldPropertyProvider on PropertyProvider {
  BorderRadius? borderRadiusField({
    required String id,
    required String title,
    BorderRadius? initialValue,
    bool isOptional = true,
    BorderRadius defaultValue = BorderRadius.zero,
  }) {
    final params = BorderRadiusPropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue,
      initialValue: initialValue,
    );
    return BorderRadiusPropertyField(
      this,
      params,
    )();
  }
}

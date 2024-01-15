import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_params.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/shape_border_field.dart';

class ShapeBorderPropertyParams extends BasePropertyParams<ShapeBorder> {
  ShapeBorderPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class ShapeBorderPropertyField
    extends PropertyField<ShapeBorderPropertyParams, ShapeBorder> {
  ShapeBorderPropertyField(super.provider, super.params);

  @override
  Widget build(
    ShapeBorderPropertyParams params,
    Function(ShapeBorder) onChanged,
    ShapeBorder value,
  ) {
    return ShapeBorderField(
      onChanged: onChanged,
      value: value,
    );
  }
}

extension ShapeBorderFieldPropertyProvider on PropertiesNotifier {
  void shapeBorderField({
    required String id,
    required String title,
    ShapeBorder? initialValue,
    bool isOptional = true,
    ShapeBorder? defaultValue,
  }) {
    final params = ShapeBorderPropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue?? const RoundedRectangleBorder(),
      initialValue: initialValue,
    );
    return ShapeBorderPropertyField(
      this,
      params,
    ).register();
  }
}

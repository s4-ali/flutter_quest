import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_params.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/matrix4_field.dart';

class Matrix4PropertyParams extends BasePropertyParams<Matrix4> {
  Matrix4PropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class Matrix4PropertyField
    extends PropertyField<Matrix4PropertyParams, Matrix4> {
  Matrix4PropertyField(super.provider, super.params);

  @override
  Widget build(
    Matrix4PropertyParams params,
    Function(Matrix4) onChanged,
    Matrix4 value,
  ) {
    return Matrix4Field(
      onChanged: onChanged,
      value: value,
    );
  }
}

extension Matrix4FieldPropertyProvider on PropertiesNotifier {
  Matrix4? matrix4Field({
    required String id,
    required String title,
    Matrix4? initialValue,
    bool isOptional = true,
    Matrix4? defaultValue,
  }) {
    final params = Matrix4PropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue??Matrix4.rotationX(0.0),
      initialValue: initialValue,
    );
    return Matrix4PropertyField(
      this,
      params,
    )();
  }
}

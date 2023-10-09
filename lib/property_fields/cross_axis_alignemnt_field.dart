import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/cross_axis_alignemnt_field.dart';

class CrossAxisAlignemntPropertyParams extends PropertyParams<CrossAxisAlignment> {
  CrossAxisAlignemntPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class CrossAxisAlignemntPropertyField
    extends PropertyField<CrossAxisAlignemntPropertyParams, CrossAxisAlignment> {
  CrossAxisAlignemntPropertyField(super.provider, super.params);

  @override
  Widget build(
    CrossAxisAlignemntPropertyParams params,
    Function(CrossAxisAlignment) onChanged,
    CrossAxisAlignment value,
  ) {
    return CrossAxisAlignemntField(
      onChanged: onChanged,
      value: value,
    );
  }
}

extension CrossAxisAlignemntFieldPropertyProvider on PropertyProvider {
  CrossAxisAlignment? crossAxisAlignemntField({
    required String id,
    required String title,
    CrossAxisAlignment? initialValue,
    bool isOptional = true,
    CrossAxisAlignment defaultValue = CrossAxisAlignment.center,
  }) {
    final params = CrossAxisAlignemntPropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue,
      initialValue: initialValue,
    );
    return CrossAxisAlignemntPropertyField(
      this,
      params,
    )();
  }
}

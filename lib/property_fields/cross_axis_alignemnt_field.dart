import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/cross_axis_alignemnt_field.dart';

class CrossAxisAlignmentPropertyParams extends PropertyParams<CrossAxisAlignment> {
  CrossAxisAlignmentPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class CrossAxisAlignemntPropertyField
    extends PropertyField<CrossAxisAlignmentPropertyParams, CrossAxisAlignment> {
  CrossAxisAlignemntPropertyField(super.provider, super.params);

  @override
  Widget build(
    CrossAxisAlignmentPropertyParams params,
    Function(CrossAxisAlignment) onChanged,
    CrossAxisAlignment value,
  ) {
    return CrossAxisAlignmentField(
      onChanged: onChanged,
      value: value,
    );
  }
}

extension CrossAxisAlignemntFieldPropertyProvider on PropertyProvider {
  CrossAxisAlignment? crossAxisAlignmentField({
    required String id,
    required String title,
    CrossAxisAlignment? initialValue,
    bool isOptional = true,
    CrossAxisAlignment defaultValue = CrossAxisAlignment.center,
  }) {
    final params = CrossAxisAlignmentPropertyParams(
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

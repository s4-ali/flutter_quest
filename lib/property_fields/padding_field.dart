import 'package:flutter/cupertino.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/padding_field/padding_field.dart';

class PaddingPropertyParams extends PropertyParams<EdgeInsets> {
  PaddingPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class PaddingPropertyField
    extends PropertyField<PaddingPropertyParams, EdgeInsets> {
  PaddingPropertyField(super.provider, super.params);

  @override
  Widget build(
    PaddingPropertyParams params,
    Function(EdgeInsets) onChanged,
    EdgeInsets value,
  ) {
    return PaddingField(
      onChanged: onChanged,
    );
  }
}

extension PaddingFieldPropertyProvider on PropertyProvider {
  EdgeInsets? paddingField({
    required String id,
    required String title,
    EdgeInsets? initialValue,
    bool isOptional = true,
    EdgeInsets defaultValue = EdgeInsets.zero,
  }) {
    final params = PaddingPropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue,
      initialValue: initialValue,
    );
    return PaddingPropertyField(
      this,
      params,
    )();
  }
}

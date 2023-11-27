import 'package:flutter/cupertino.dart';
import 'package:flutter_quest/core/property_provider.dart';
import '../widgets/fields/edge_insets_field/edge_insets_field.dart';

class EdgeInsetsPropertyParams extends PropertyParams<EdgeInsets> {
  EdgeInsetsPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class EdgeInsetsPropertyField
    extends PropertyField<EdgeInsetsPropertyParams, EdgeInsets> {
  EdgeInsetsPropertyField(super.provider, super.params);

  @override
  Widget build(
    EdgeInsetsPropertyParams params,
    Function(EdgeInsets) onChanged,
    EdgeInsets value,
  ) {
    return EdgeInsetsField(
      onChanged: onChanged,
      value: value,
    );
  }
}

extension EdgeInsetsFieldPropertyProvider on PropertyProvider {
  EdgeInsets? edgeInsetsField({
    required String id,
    required String title,
    EdgeInsets? initialValue,
    bool isOptional = true,
    EdgeInsets defaultValue = EdgeInsets.zero,
  }) {
    final params = EdgeInsetsPropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue,
      initialValue: initialValue,
    );
    return EdgeInsetsPropertyField(
      this,
      params,
    )();
  }
}

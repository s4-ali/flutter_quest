import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_params.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/vertical_direction_field.dart';

class VerticalDirectionPropertyParams extends BasePropertyParams<VerticalDirection> {
  VerticalDirectionPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class VerticalDirectionPropertyField
    extends PropertyField<VerticalDirectionPropertyParams, VerticalDirection> {
  VerticalDirectionPropertyField(super.provider, super.params);

  @override
  Widget build(
    VerticalDirectionPropertyParams params,
    Function(VerticalDirection) onChanged,
    VerticalDirection value,
  ) {
    return VerticalDirectionField(
      onChanged: onChanged,
      value: value,
    );
  }
}

extension VerticalDirectionFieldPropertyProvider on PropertiesNotifier {
  void verticalDirectionField({
    required String id,
    required String title,
    VerticalDirection? initialValue,
    bool isOptional = true,
    VerticalDirection defaultValue = VerticalDirection.down,
  }) {
    final params = VerticalDirectionPropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue,
      initialValue: initialValue,
    );
    VerticalDirectionPropertyField(
      this,
      params,
    ).register();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_params.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/icon_data_field.dart';

class IconDataPropertyParams extends BasePropertyParams<IconData> {
  IconDataPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class IconDataPropertyField
    extends PropertyField<IconDataPropertyParams, IconData> {
  IconDataPropertyField(super.provider, super.params);

  @override
  Widget build(
    IconDataPropertyParams params,
    Function(IconData) onChanged,
    IconData value,
  ) {
    return IconDataField(
      onChanged: onChanged,
      value: value,
    );
  }
}

extension IconFieldPropertyProvider on PropertiesNotifier {
  void iconDataField({
    required String id,
    required String title,
    IconData? initialValue,
    bool isOptional = true,
    IconData defaultValue = Icons.photo_size_select_actual,
  }) {
    final params = IconDataPropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue,
      initialValue: initialValue,
    );
    IconDataPropertyField(
      this,
      params,
    ).register();
  }
}

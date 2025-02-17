import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_params.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/main_axis_alignment_field.dart';

class MainAxisAlignmentPropertyParams extends BasePropertyParams<MainAxisAlignment> {
  MainAxisAlignmentPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class MainAxisAlignmentPropertyField
    extends PropertyField<MainAxisAlignmentPropertyParams, MainAxisAlignment> {
  MainAxisAlignmentPropertyField(super.provider, super.params);

  @override
  Widget build(
    MainAxisAlignmentPropertyParams params,
    Function(MainAxisAlignment) onChanged,
    MainAxisAlignment value,
  ) {
    return MainAxisAlignmentField(
      onChanged: onChanged,
      value: value,
    );
  }
}

extension MainAxisAlignmentFieldPropertyProvider on PropertiesNotifier {
  void mainAxisAlignmentField({
    required String id,
    required String title,
    MainAxisAlignment? initialValue,
    bool isOptional = true,
    MainAxisAlignment defaultValue = MainAxisAlignment.center,
  }) {
    final params = MainAxisAlignmentPropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue,
      initialValue: initialValue,
    );
    MainAxisAlignmentPropertyField(
      this,
      params,
    ).register();
  }
}

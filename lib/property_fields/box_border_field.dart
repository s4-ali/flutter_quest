import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_params.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/box_border_field.dart';

class BoxBorderPropertyParams extends BasePropertyParams<BoxBorder> {
  BoxBorderPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class BorderPropertyField
  extends PropertyField<BoxBorderPropertyParams, BoxBorder> {
  BorderPropertyField(super.provider, super.params);

  @override
  Widget build(
    BoxBorderPropertyParams params,
    Function(BoxBorder) onChanged,
      BoxBorder value,
  ) {
    return BoxBorderField(
      onChanged: onChanged,
      value: value,
    );
  }
}

extension BorderFieldPropertyProvider on PropertiesNotifier {
  void borderField({
    required String id,
    required String title,
    BoxBorder? initialValue,
    bool isOptional = true,
    BoxBorder? defaultValue,
  }) {
    final params = BoxBorderPropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue??Border.all(),
      initialValue: initialValue,
    );
    BorderPropertyField(
      this,
      params,
    ).register();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_params.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/text_direction_field.dart';

class TextDirectionPropertyParams extends BasePropertyParams<TextDirection> {
  TextDirectionPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class TextDirectionPropertyField
    extends PropertyField<TextDirectionPropertyParams, TextDirection> {
  TextDirectionPropertyField(super.provider, super.params);

  @override
  Widget build(
    TextDirectionPropertyParams params,
    Function(TextDirection) onChanged,
    TextDirection value,
  ) {
    return TextDirectionField(
      onChanged: onChanged,
      value: value,
    );
  }
}

extension TextDirectionFieldPropertyProvider on PropertiesNotifier {
  void textDirectionField({
    required String id,
    required String title,
    TextDirection? initialValue,
    bool isOptional = true,
    TextDirection defaultValue = TextDirection.ltr,
  }) {
    final params = TextDirectionPropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue,
      initialValue: initialValue,
    );
    return TextDirectionPropertyField(
      this,
      params,
    ).register();
  }
}

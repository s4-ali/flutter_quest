import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_params.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/text_style_field.dart';

class TextStylePropertyParams extends BasePropertyParams<TextStyle> {
  TextStylePropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class TextStylePropertyField
    extends PropertyField<TextStylePropertyParams, TextStyle> {
  TextStylePropertyField(super.provider, super.params);

  @override
  Widget build(
    TextStylePropertyParams params,
    Function(TextStyle) onChanged,
    TextStyle value,
  ) {
    return TextStyleField(
      onChanged: onChanged,
      value: value,
    );
  }
}

extension TextStyleFieldPropertyProvider on PropertiesNotifier {
  TextStyle? textStyleField({
    required String id,
    required String title,
    TextStyle? initialValue,
    bool isOptional = true,
    TextStyle? defaultValue,
  }) {
    final params = TextStylePropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue?? const TextStyle(),
      initialValue: initialValue,
    );
    return TextStylePropertyField(
      this,
      params,
    )();
  }
}

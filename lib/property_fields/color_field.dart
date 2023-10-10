import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/color_field.dart';

class ColorPropertyParams extends PropertyParams<Color> {
  ColorPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class ColorPropertyField
    extends PropertyField<ColorPropertyParams, Color> {
  ColorPropertyField(super.provider, super.params);

  @override
  Widget build(
    ColorPropertyParams params,
    Function(Color) onChanged,
    Color value,
  ) {
    return ColorField(
      onChanged: onChanged,
      value: value,
    );
  }
}

extension ColorFieldPropertyProvider on PropertyProvider {
  Color? colorField({
    required String id,
    required String title,
    Color? initialValue,
    bool isOptional = true,
    Color defaultValue = Colors.black,
  }) {
    final params = ColorPropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue,
      initialValue: initialValue,
    );
    return ColorPropertyField(
      this,
      params,
    )();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_params.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/number_field.dart';

class NumberPropertyParams extends BasePropertyParams<num> {
  NumberPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class NumberPropertyField<T extends num> extends PropertyField<NumberPropertyParams, T> {
  NumberPropertyField(super.provider, super.params);

  @override
  Widget build(
    NumberPropertyParams params,
    Function(ValueHolder<T>) onChanged,
    T value,
  ) {
    return NumberField<T>(
      key: ValueKey(params.id),
      onChanged: onChanged,
      value: value,
    );
  }
}

extension NumberFieldPropertyProvider on PropertiesNotifier {
  void numberField<T extends num>({
    required String id,
    required String title,
    required T defaultValue,
    T? initialValue,
    bool isOptional = true,
  }) {
    final params = NumberPropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue,
      initialValue: initialValue,
    );
    NumberPropertyField<T>(
      this,
      params,
    ).register();
  }

  void heightField({
    String id = "height",
    String title = "Height",
    double? initialValue,
    bool isOptional = true,
    double defaultValue = 0,
  }) {
    numberField<double>(
      id: id,
      title: title,
      isOptional: isOptional,
      initialValue: initialValue,
      defaultValue: defaultValue,
    );
  }

  void widthField({
    String id = "width",
    String title = "Width",
    double? initialValue,
    bool isOptional = true,
    double defaultValue = 0,
  }) {
    numberField<double>(
      id: id,
      title: title,
      isOptional: isOptional,
      initialValue: initialValue,
      defaultValue: defaultValue,
    );
  }

  void doubleField({
    String id = "doubleField",
    String title = "doubleField",
    double? initialValue,
    bool isOptional = true,
    double defaultValue = 0,
  }) {
    return numberField<double>(
      id: id,
      title: title,
      isOptional: isOptional,
      initialValue: initialValue,
      defaultValue: defaultValue,
    );
  }



  void intField({
    String id = "intField",
    String title = "Int Field",
    int? initialValue,
    bool isOptional = true,
    int defaultValue = 0,
  }) {
    return numberField<int>(
      id: id,
      title: title,
      isOptional: isOptional,
      initialValue: initialValue,
      defaultValue: defaultValue,
    );
  }


}

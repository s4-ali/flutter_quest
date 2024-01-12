import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_params.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/range_picker_number_field.dart';

class RangePickerNumberPropertyParams extends BasePropertyParams<num> {
  RangePickerNumberPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class RangePickerNumberPropertyField
    extends PropertyField<RangePickerNumberPropertyParams, num> {
  RangePickerNumberPropertyField(super.provider, super.params);

  @override
  Widget build(
    RangePickerNumberPropertyParams params,
    Function(num) onChanged,
    num value,
  ) {
    return RangePickerNumberField(
      onChanged: onChanged,
      value: value,
    );
  }
}

extension RangePickerNumberFieldPropertyProvider on PropertiesNotifier {
  num? rangePickerNumberField({
    required String id,
    required String title,
    num? initialValue,
    bool isOptional = true,
    num defaultValue = 0,
  }) {
    final params = RangePickerNumberPropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue,
      initialValue: initialValue,
    );
    return RangePickerNumberPropertyField(
      this,
      params,
    )();
  }

  double? doubleRangePickerField({
    String id = "doubleField",
    String title = "doubleField",
    num? initialValue,
    bool isOptional = true,
    num defaultValue = 0,
  }) {
    return rangePickerNumberField(
      id: id,
      title: title,
      isOptional: isOptional,
      initialValue: initialValue,
      defaultValue: defaultValue,
    )?.toDouble();
  }
}

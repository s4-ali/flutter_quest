import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';

/// These are the inputs required for a certain field,
/// for example title, max value, or any other property
/// that we would like to set in the field.
class NumberPropertyParams extends PropertyParams<num> {
  NumberPropertyParams({
    required super.id,
    required super.initial,
    required super.title,
  });
}


/// This is the field, here we define the design of field and
/// and provide the onChanged and current value params
class NumberPropertyField extends PropertyField<NumberPropertyParams, num> {
  NumberPropertyField(super.provider, super.params);

  @override
  Widget build(
      NumberPropertyParams params, Function(num) onChanged, num value) {
    return Column(
      children: [
        Text(params.title),
        TextField(
          controller: TextEditingController(text: "$value"),
          keyboardType: TextInputType.number,
          onSubmitted: (text) {
            if (text.isNotEmpty) {
              onChanged(
                num.parse(text),
              );
            }
          },
        ),
      ],
    );
  }
}

/// helper methods that register a property field inside property provider
extension NumberFieldPropertyProvider on PropertyProvider {
  num numberField({
    required String id,
    required String title,
    num initial = 100,
  }) {
    final params = NumberPropertyParams(
      id: id,
      initial: initial,
      title: title,
    );
    return NumberPropertyField(
      this,
      params,
    )();
  }
}

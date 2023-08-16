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

/// Here we define the design of field and
/// and provide the onChanged and current value params
class NumberPropertyField extends PropertyField<NumberPropertyParams, num> {
  NumberPropertyField(super.provider, super.params);

  @override
  Widget build(
    NumberPropertyParams params,
    Function(num) onChanged,
    num value,
  ) {
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

/// Helper method that register a property field inside property provider
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

  double heightField({
    String id = "height",
    String title = "Height",
    num initial = 100.0,
  }) {
    return numberField(id: id, title: title, initial: initial).toDouble();
  }

  double widthField({
    String id = "width",
    String title = "Width",
    num initial = 100.0,
  }) {
    return numberField(id: id, title: title, initial: initial).toDouble();
  }
}

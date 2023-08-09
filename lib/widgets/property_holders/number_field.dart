import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_holder.dart';
import 'package:flutter_quest/core/property_provider.dart';

class NumberFieldProperHolder extends PropertyHolder {
  final Function(num) onChanged;

  NumberFieldProperHolder({
    required super.id,
    required num value,
    required this.onChanged,
  }) : super(
    widget: TextField(
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
  );
}

extension NumberFieldPropertyProvider on PropertyProvider{
  num numberField({
    required String id,
    required String title,
    required num max,
    num min = 0,
    num initial = 100,
  }) {
    if (widgets.alreadyExists(id)) {
      return getValueOf(id, initial);
    }

    PropertyHolder buildPropertyField(Function(num) onChanged) {
      return NumberFieldProperHolder(
        id: id,
        value: getValueOf(id, initial),
        onChanged: onChanged,
      );
    }

    void onNumberChanged(num number) {
      values[id] = number.toDouble();
      widgets.update(buildPropertyField(onNumberChanged));
      notifyListeners();
    }

    widgets.add(buildPropertyField(onNumberChanged));
    Future.delayed(const Duration(milliseconds: 100), notifyListeners);
    return values[id];
  }
}
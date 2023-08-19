import 'package:flutter/material.dart';

enum NumberType {
  int,
  double,
}

class NumberRangePicker extends StatelessWidget {
  final String title;
  final String? label;
  final num min;
  final num max;
  final num value;
  final Function(num number) onChanged;
  final NumberType type;

  const NumberRangePicker({
    super.key,
    required this.title,
    this.label,
    this.min = 0,
    required this.max,
    required this.value,
    required this.onChanged,
    this.type = NumberType.double,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Slider(
        label: label ?? value.toStringAsFixed(2),
        value: value.toDouble(),
        min: min.toDouble(),
        max: max.toDouble(),
        onChanged: onChanged,
      ),
    );
  }
}

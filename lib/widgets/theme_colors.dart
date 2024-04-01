import 'package:flutter/material.dart';
import 'package:flutter_quest/main.dart';
import 'package:flutter_quest/widgets/color_option.dart';

const themeColors = [
  _ThemeColor(color: Colors.deepPurple),
  _ThemeColor(color: Colors.indigo),
  _ThemeColor(color: Colors.blue),
  _ThemeColor(color: Colors.teal),
  _ThemeColor(color: Colors.green),
  _ThemeColor(color: Colors.yellow),
  _ThemeColor(color: Colors.orange),
  _ThemeColor(color: Colors.pink),
];

class ThemeColors extends StatelessWidget {
  const ThemeColors({super.key});

  @override
  Widget build(BuildContext context) {

    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: themeColors,
    );
  }
}

class _ThemeColor extends StatelessWidget {
  final Color color;

  const _ThemeColor({required this.color});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Color>(
      valueListenable: themeColorNotifier,
      builder: (_, selectedColor, __) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: ColorOptionBox(
            fillColor: color,
            isSelected: selectedColor == color,
            onUpdated: (_) {
              themeColorNotifier.value = color;
            },
            dense: true,
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_quest/utils/extensions.dart';

class ColorSelector extends StatelessWidget {
  final Color selectedColor;
  final Function(Color) onColorUpdated;

  const ColorSelector(
      {super.key, required this.selectedColor, required this.onColorUpdated});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildColorOption(Colors.blue),
        buildColorOption(Colors.red),
        buildColorOption(Colors.green),
        buildColorOption(Colors.yellow),
      ],
    );
  }

  ColorOption buildColorOption(Color color) {
    return ColorOption(
      color: color,
      isSelected: color.isThe(selectedColor),
      onPressed: () {
        onColorUpdated(color);
      },
    );
  }
}

class ColorOption extends StatelessWidget {
  final Color color;
  final bool isSelected;
  final VoidCallback onPressed;

  const ColorOption({
    super.key,
    required this.color,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        height: 32,
        width: 32,
        child: ColoredBox(
          color: color,
          child: isSelected
              ? const Center(
            child: Icon(Icons.check),
          )
              : null,
        ),
      ),
    );
  }
}

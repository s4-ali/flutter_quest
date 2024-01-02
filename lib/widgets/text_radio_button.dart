import 'package:flutter/material.dart';
import 'package:flutter_quest/utils/extensions.dart';

class TextRadioButton<T> extends StatefulWidget {
  final T option;
  final void Function(T) onChanged;

  final String title;
  final bool isSelected;

  const TextRadioButton({
    super.key,
    required this.onChanged,
    required this.isSelected,
    required this.option,
    required this.title,
  });

  @override
  State<TextRadioButton<T>> createState() => _TextRadioButtonState<T>();
}

class _TextRadioButtonState<T> extends State<TextRadioButton<T>> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    BoxDecoration decoration;
    Color textColor;
    if (widget.isSelected) {
      decoration = BoxDecoration(
        color: context.colorScheme.primary,
        borderRadius: const BorderRadius.all(Radius.circular(4)),
      );
      textColor = context.colorScheme.onPrimary;
    } else if (isHovering) {
      decoration = BoxDecoration(
        color: context.colorScheme.primaryContainer,
        borderRadius: const BorderRadius.all(Radius.circular(4)),
      );
      textColor = context.colorScheme.onPrimaryContainer;
    } else {
      decoration = const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(4)),
      );
      textColor = context.colorScheme.onSurface;
    }

    return InkWell(
      // hoverColor: Colors.transparent,
      onTap: () => widget.onChanged(widget.option),
      // onHover: onHover,
      child: Container(
        padding: const EdgeInsets.only(bottom: 2),
        margin: const EdgeInsets.all(1),
        alignment: Alignment.center,
        height: 56,
        decoration: decoration,
        child: Text(
          widget.title,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
    );
  }

  void onHover(val) {
    setState(() {
      isHovering = val;
    });
  }
}

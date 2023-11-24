import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

const values = [
  Alignment.topLeft,
  Alignment.topCenter,
  Alignment.topRight,
  Alignment.centerLeft,
  Alignment.center,
  Alignment.centerRight,
  Alignment.bottomLeft,
  Alignment.bottomCenter,
  Alignment.bottomRight,
];

extension on Alignment {
  String get title {
    switch (this) {
      case Alignment.topLeft:
        return "Top Left";
      case Alignment.topCenter:
        return "Top";
      case Alignment.topRight:
        return "Top Right";
      case Alignment.centerLeft:
        return "Left";
      case Alignment.center:
        return "Center";
      case Alignment.centerRight:
        return "Right";
      case Alignment.bottomLeft:
        return "Bottom Left";
      case Alignment.bottomCenter:
        return "Bottom";
      case Alignment.bottomRight:
        return "Bottom Right";
      default:
        return "";
    }
  }
}

class AlignmentField extends PropertyWidget<Alignment> {
  const AlignmentField({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(3, (row) {
        return Row(
          children: List.generate(3, (col) {
            Alignment option = values[row * 3 + col];
            return Expanded(
              child: _AlignmentFieldItem(
                option: option,
                onChanged: onChanged,
                isSelected: option == value,
              ),
            );
          }),
        );
      }),
    );
  }
}

class _AlignmentFieldItem extends StatefulWidget {
  final Alignment option;
  final void Function(Alignment) onChanged;
  final bool isSelected;

  const _AlignmentFieldItem({
    required this.onChanged,
    required this.isSelected,
    required this.option,
  });

  @override
  State<_AlignmentFieldItem> createState() => _AlignmentFieldItemState();
}

class _AlignmentFieldItemState extends State<_AlignmentFieldItem> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    final backgroundColor =
        widget.isSelected ? const Color(0xFF0099FF) : Colors.transparent;
    final borderColor = widget.isSelected
        ? Colors.transparent
        : isHovering
            ? const Color(0xFF0099FF)
            : const Color(0xFF35363A);
    final decoration = BoxDecoration(
      color: backgroundColor,
      border: Border.all(
        color: borderColor,
        width: 1,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(4)),
    );

    final textColor = widget.isSelected || isHovering
        ? const Color(0xFFFFFFFF)
        : const Color(0xFF808080);

    return InkWell(
      hoverColor: Colors.transparent,
      onTap: () => widget.onChanged(widget.option),
      onHover: onHover,
      child: Container(
        padding: const EdgeInsets.only(bottom: 2),
        margin: const EdgeInsets.all(1),
        alignment: Alignment.center,
        height: 35,
        decoration: decoration,
        child: Text(
          widget.option.title,
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

class AlignmentPreviewer extends StatelessWidget {
  const AlignmentPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<Alignment>(
      values: values,
      propertyBuilder: (onChanged, value) {
        return AlignmentField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

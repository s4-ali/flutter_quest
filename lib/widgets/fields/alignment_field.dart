import 'package:flutter/material.dart';
import 'package:flutter_quest/utils/extensions.dart';
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

import 'package:flutter/material.dart';

enum AlignmentOption {
  topLeft,
  topCenter,
  topRight,
  centerLeft,
  center,
  centerRight,
  bottomLeft,
  bottomCenter,
  bottomRight,
}

class AlignmentField extends StatefulWidget {
  final void Function(Alignment) onChanged;

  const AlignmentField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<AlignmentField> createState() => _AlignmentFieldState();
}

class _AlignmentFieldState extends State<AlignmentField> {
  AlignmentOption selectedOption = AlignmentOption.center;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(3, (row) {
        return Row(
          children: List.generate(3, (col) {
            AlignmentOption option = AlignmentOption.values[row * 3 + col];
            return Expanded(
              child: AlignmentFieldItem(
                option: option,
                onChanged: (alignment) {
                  setState(() {
                    widget.onChanged(alignment);
                    if (selectedOption != option) {
                      selectedOption = option; // Deselect if already selected.
                    }
                  });
                },
                isSelected: selectedOption == option,
              ),
            );
          }),
        );
      }),
    );
  }
}

class AlignmentFieldItem extends StatefulWidget {
  final AlignmentOption option;
  final void Function(Alignment) onChanged;
  final bool isSelected;

  const AlignmentFieldItem({
    super.key,
    required this.onChanged,
    required this.isSelected,
    required this.option,
  });

  @override
  State<AlignmentFieldItem> createState() => _AlignmentFieldItemState();
}

class _AlignmentFieldItemState extends State<AlignmentFieldItem> {
  String alignmentName = "";
  Alignment? alignment;

  AlignmentOption? onHoverOption;
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    switch (widget.option) {
      case AlignmentOption.topLeft:
        alignmentName = "Top Left";
        alignment = Alignment.topLeft;
        break;
      case AlignmentOption.topCenter:
        alignmentName = "Top";
        alignment = Alignment.topCenter;
        break;
      case AlignmentOption.topRight:
        alignmentName = "Top Right";
        alignment = Alignment.topRight;
        break;
      case AlignmentOption.centerLeft:
        alignmentName = "Left";
        alignment = Alignment.centerLeft;
        break;
      case AlignmentOption.center:
        alignmentName = "Center";
        alignment = Alignment.center;
        break;
      case AlignmentOption.centerRight:
        alignmentName = "Right";
        alignment = Alignment.centerRight;
        break;
      case AlignmentOption.bottomLeft:
        alignmentName = "Bottom Left";
        alignment = Alignment.bottomLeft;
        break;
      case AlignmentOption.bottomCenter:
        alignmentName = "Bottom";
        alignment = Alignment.bottomCenter;
        break;
      case AlignmentOption.bottomRight:
        alignmentName = "Bottom Right";
        alignment = Alignment.bottomRight;
        break;
      default:
        alignment = Alignment.center;
        alignmentName = "";
        break;
    }

    return InkWell(
      hoverColor: Colors.transparent,
      onTap: () {
        setState(() {
          widget.onChanged(alignment!);
        });
      },
      onHover: (val) {
        setState(() {
          isHover = val;
          onHoverOption = widget.option;
        });
      },
      child: Container(
          padding: const EdgeInsets.only(bottom: 2),
          margin: const EdgeInsets.all(1),
          alignment: Alignment.center,
          height: 35,
          decoration: BoxDecoration(
            color: widget.isSelected
                ? const Color(0xFF0099FF)
                : Colors.transparent,
            border: Border.all(
              color: widget.isSelected
                  ? Colors.transparent
                  : isHover
                      ? const Color(0xFF0099FF)
                      : const Color(0xFF35363A),
              width: 1,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          child: Center(
            child: Text(
              alignmentName,
              style: TextStyle(
                color: widget.isSelected || isHover
                    ? const Color(0xFFFFFFFF)
                    : const Color(0xFF808080),
              ),
            ),
          ),
        ),
    );
  }
}

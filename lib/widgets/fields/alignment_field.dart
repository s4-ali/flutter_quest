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
  _AlignmentFieldState createState() => _AlignmentFieldState();
}

class _AlignmentFieldState extends State<AlignmentField> {

  AlignmentOption selectedOption = AlignmentOption.center;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 318,
          decoration: BoxDecoration(
            color: const Color(0xFF36343B),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.white,
              width: 1,
            ),
          ),
          child: Column(
            children: List.generate(3, (row) {
              return Row(
                children: List.generate(3, (col) {
                  AlignmentOption option = AlignmentOption.values[row * 3 + col];
                  return AlignmentFieldItem(
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
                  );
                }),
              );
            }),
          ),
        ),
      ],
    );
  }
}

class AlignmentFieldItem extends StatefulWidget {

  final AlignmentOption option;
  void Function(Alignment) onChanged;
  bool isSelected = false;

  AlignmentFieldItem({
    super.key,
    required this.onChanged,
    required this.isSelected,
    required this.option,
  });

  @override
  State<AlignmentFieldItem> createState() => _AlignmentFieldItemState();
}

class _AlignmentFieldItemState extends State<AlignmentFieldItem> {

  BorderRadius? borderRadius;
  String text = "";
  Alignment? alignment;

  AlignmentOption? onHoverOption;
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    switch (widget.option) {
      case AlignmentOption.topLeft:
        borderRadius = const BorderRadius.only(topLeft: Radius.circular(7));
        text = "Top Left";
        alignment = Alignment.topLeft;
        break;
      case AlignmentOption.topCenter:
        text = "Top";
        alignment = Alignment.topCenter;
        break;
      case AlignmentOption.topRight:
        borderRadius = const BorderRadius.only(topRight: Radius.circular(7));
        text = "Top Right";
        alignment = Alignment.topRight;
        break;
      case AlignmentOption.centerLeft:
        text = "Left";
        alignment = Alignment.centerLeft;
        break;
      case AlignmentOption.center:
        text = "Center";
        alignment = Alignment.center;
        break;
      case AlignmentOption.centerRight:
        text = "Right";
        alignment = Alignment.centerRight;
        break;
      case AlignmentOption.bottomLeft:
        borderRadius = const BorderRadius.only(bottomLeft: Radius.circular(7));
        text = "Bottom Left";
        alignment = Alignment.bottomLeft;
        break;
      case AlignmentOption.bottomCenter:
        text = "Bottom";
        alignment = Alignment.bottomCenter;
        break;
      case AlignmentOption.bottomRight:
        borderRadius = const BorderRadius.only(bottomRight: Radius.circular(7));
        text = "Bottom Right";
        alignment = Alignment.bottomRight;
        break;
      default:
        borderRadius = BorderRadius.circular(0);
        alignment = Alignment.center;
        text = "";
        break;
    }

    return InkWell(
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
        margin: const EdgeInsets.all(0),
        alignment: Alignment.center,
        width: 105.3,
        decoration: BoxDecoration(
          color: const Color(0xFF36343B),
          border: Border.all(
            color: widget.isSelected ? Colors.white : const Color(0xFF49454F),
            width: 1,
          ),
          borderRadius: borderRadius,
        ),
        child: Center(
          child: Text(
            (widget.isSelected ||
                    isHover == true && onHoverOption == widget.option)
                ? text : "",
            style: TextStyle(
              color: widget.isSelected ? Colors.white : const Color(0xFF49454F),
            ),
          ),
        ),
      ),
    );
  }
}

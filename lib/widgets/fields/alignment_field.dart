import 'package:flutter/material.dart';

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

  int selectedOptionIndex = 5;

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
                  int index = row * 3 + col + 1;
                  return AlignmentFieldItem(
                    index: index,
                    onChanged: (alignment) {
                      setState(() {
                        widget.onChanged(alignment);
                        if (selectedOptionIndex == index) {
                          selectedOptionIndex = 0; // Deselect if already selected.
                        } else {
                          selectedOptionIndex = index;
                        }
                      });
                    },
                    isSelected: selectedOptionIndex == index,
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

  int index;
  void Function(Alignment) onChanged;
  bool isSelected = false;

  AlignmentFieldItem({
    super.key,
    required this.index,
    required this.onChanged,
    required this.isSelected,
  });

  @override
  State<AlignmentFieldItem> createState() => _AlignmentFieldItemState();
}

class _AlignmentFieldItemState extends State<AlignmentFieldItem> {
  BorderRadius? borderRadius;
  String text = "";
  Alignment? alignment;

  int onHoverOptionIndex = 0;
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    switch (widget.index) {
      case 1:
        borderRadius = const BorderRadius.only(topLeft: Radius.circular(7));
        text = "Top Left";
        alignment = Alignment.topLeft;
        break;
      case 2:
        text = "Top";
        alignment = Alignment.topCenter;
        break;
      case 3:
        borderRadius = const BorderRadius.only(topRight: Radius.circular(7));
        text = "Top Right";
        alignment = Alignment.topRight;
        break;
      case 4:
        text = "Left";
        alignment = Alignment.centerLeft;
        break;
      case 5:
        text = "Center";
        alignment = Alignment.center;
        break;
      case 6:
        text = "Right";
        alignment = Alignment.centerRight;
        break;
      case 7:
        borderRadius = const BorderRadius.only(bottomLeft: Radius.circular(7));
        text = "Bottom Left";
        alignment = Alignment.bottomLeft;
        break;
      case 8:
        text = "Bottom";
        alignment = Alignment.bottomCenter;
        break;
      case 9:
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
          onHoverOptionIndex = widget.index;
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
                    isHover == true && onHoverOptionIndex == widget.index)
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

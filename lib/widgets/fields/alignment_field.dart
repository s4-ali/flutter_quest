
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
  int selectedOption = 5;
  int onHoverOption = 5;
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // height: 71,
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
            children: [
              Row(
                children: [
                  customRadioButton(1),
                  customRadioButton(2),
                  customRadioButton(3),
                ],
              ),
              Row(
                children: [
                  customRadioButton(4),
                  customRadioButton(5),
                  customRadioButton(6),
                ],
              ),
              Row(
                children: [
                  customRadioButton(7),
                  customRadioButton(8),
                  customRadioButton(9),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget customRadioButton(int index) {
    BorderRadius? borderRadius;
    String text;
    Alignment alignment;

    switch (index) {
      case 1:
        borderRadius = const BorderRadius.only(topLeft: Radius.circular(7));
        text ="Top Left";
        alignment = Alignment.topLeft;
        break;
      case 2:
        text ="Top";
        alignment = Alignment.topCenter;
        break;
      case 3:
        borderRadius = const BorderRadius.only(topRight: Radius.circular(7));
        text ="Top Right";
        alignment = Alignment.topRight;
        break;
      case 4:
        text ="Left";
        alignment = Alignment.centerLeft;
        break;
      case 5:
        text ="Center";
        alignment = Alignment.center;
        break;
      case 6:
        text ="Right";
        alignment = Alignment.centerRight;
        break;
      case 7:
        borderRadius = const BorderRadius.only(bottomLeft: Radius.circular(7));
        text ="Bottom Left";
        alignment = Alignment.bottomLeft;
        break;
      case 8:
        text ="Bottom";
        alignment = Alignment.bottomCenter;
        break;
      case 9:
        borderRadius = const BorderRadius.only(bottomRight: Radius.circular(7));
        text ="Bottom Right";
        alignment = Alignment.bottomRight;
        break;
      default:
        borderRadius = BorderRadius.circular(0);
        alignment = Alignment.center;
        text ="";
        break;
    }

    return InkWell(
      onTap: () {
        setState(() {
          selectedOption = index;
          widget.onChanged(alignment);
        });
      },
        onHover: (val){
          setState(() {
            isHover=val;
            onHoverOption=index;
          });
        },
      child: Container(
          padding: const EdgeInsets.only(bottom: 2),
            margin: const EdgeInsets.all(0),
            alignment: Alignment.center,
            // height: 23,
            width: 105.3,
            decoration: BoxDecoration(
              color: const Color(0xFF36343B),
              border: Border.all(
                color: (selectedOption == index)? Colors.white:
                const Color(0xFF49454F),
                width: 1,
              ),
              borderRadius: borderRadius,
            ),
            child: Center(
              child: (selectedOption == index)? Text(text):
              (isHover == true && onHoverOption == index)? Text(text, style:
              const TextStyle(color : Color(0xFF49454F))) : const Text(""),
            )
        ),
      );
  }
}

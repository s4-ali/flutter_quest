import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainAxisAlignmentField extends StatefulWidget {
  final void Function(MainAxisAlignment) onChanged;
  final MainAxisAlignment value;

  const MainAxisAlignmentField({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  State<MainAxisAlignmentField> createState() => _MainAxisAlignmentFieldState();
}

class _MainAxisAlignmentFieldState extends State<MainAxisAlignmentField> {
  MainAxisAlignment selectedOption = MainAxisAlignment.start;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final maixAxis in MainAxisAlignment.values) ...[
          MainAxisRadioButton(
              type: maixAxis,
              selectedOption: selectedOption,
              onTap: (value) {
                setState(() {
                  selectedOption = value;
                  widget.onChanged(value);
                });
              }),
        ],
      ],
    );
  }
}

class MainAxisRadioButton extends StatefulWidget {
  final MainAxisAlignment type;
  final MainAxisAlignment selectedOption;
  final Function(MainAxisAlignment) onTap;

  const MainAxisRadioButton({
    Key? key,
    required this.type,
    required this.selectedOption,
    required this.onTap,
  }) : super(key: key);

  @override
  State<MainAxisRadioButton> createState() => _MainAxisRadioButtonState();
}

class _MainAxisRadioButtonState extends State<MainAxisRadioButton> {
  MainAxisAlignment result = MainAxisAlignment.start;
  String image = "start.svg";
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case MainAxisAlignment.start:
        result = MainAxisAlignment.start;
        image = "startVertical.svg";
        break;
      case MainAxisAlignment.end:
        result = MainAxisAlignment.end;
        image = "endVertical.svg";
        break;
      case MainAxisAlignment.center:
        result = MainAxisAlignment.center;
        image = "center.svg";
        break;
      case MainAxisAlignment.spaceBetween:
        result = MainAxisAlignment.spaceBetween;
        image = "spaceBetween.svg";
        break;
      case MainAxisAlignment.spaceAround:
        result = MainAxisAlignment.spaceAround;
        image = "spaceAround.svg";
        break;
      case MainAxisAlignment.spaceEvenly:
        result = MainAxisAlignment.spaceEvenly;
        image = "spaceEvenly.svg";
        break;
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          widget.onTap(result);
        },
        child: MouseRegion(
          onEnter: (v) {
            setState(() {
              isHover = true;
            });
          },
          onExit: (v) {
            setState(() {
              isHover = false;
            });
          },
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: widget.selectedOption == widget.type
                    ? const Color(0xFF0099FF)
                    : Colors.transparent,
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                ),
                border: Border.all(
                  width: 1,
                  color: isHover ? const Color(0xFF0099FF) : Colors.transparent,
                )),
            child: Center(
              child: SvgPicture.asset(
                "assets/$image",
                color: widget.selectedOption == widget.type
                    ? const Color(0xFFFFFFFF)
                    : const Color(0xFF808080),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

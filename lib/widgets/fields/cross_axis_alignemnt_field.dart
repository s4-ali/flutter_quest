import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CrossAxisAlignmentField extends StatefulWidget {
  final void Function(CrossAxisAlignment) onChanged;
  final CrossAxisAlignment value;

  const CrossAxisAlignmentField({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  State<CrossAxisAlignmentField> createState() =>
      _CrossAxisAlignmentFieldState();
}

class _CrossAxisAlignmentFieldState extends State<CrossAxisAlignmentField> {
  CrossAxisAlignment selectedOption = CrossAxisAlignment.start;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final maixAxis in CrossAxisAlignment.values) ...[
          CrossAxisRadioButton(
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

class CrossAxisRadioButton extends StatefulWidget {
  final CrossAxisAlignment type;
  final CrossAxisAlignment selectedOption;
  final Function(CrossAxisAlignment) onTap;

  const CrossAxisRadioButton({
    Key? key,
    required this.type,
    required this.selectedOption,
    required this.onTap,
  }) : super(key: key);

  @override
  State<CrossAxisRadioButton> createState() => _CrossAxisRadioButtonState();
}

class _CrossAxisRadioButtonState extends State<CrossAxisRadioButton> {
  CrossAxisAlignment result = CrossAxisAlignment.start;
  String image = "start.svg";
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case CrossAxisAlignment.start:
        result = CrossAxisAlignment.start;
        image = "startVertical.svg";
        break;
      case CrossAxisAlignment.end:
        result = CrossAxisAlignment.end;
        image = "endVertical.svg";
        break;
      case CrossAxisAlignment.center:
        result = CrossAxisAlignment.center;
        image = "center.svg";
        break;
      case CrossAxisAlignment.baseline:
        result = CrossAxisAlignment.baseline;
        image = "baseline.svg";
        break;
      case CrossAxisAlignment.stretch:
        result = CrossAxisAlignment.stretch;
        image = "stretch.svg";
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
                color: widget.selectedOption == widget.type || isHover
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

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerticalDirectionField extends StatefulWidget {
  final void Function(VerticalDirection) onChanged;
  final VerticalDirection value;

  const VerticalDirectionField({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  State<VerticalDirectionField> createState() => _VerticalDirectionFieldState();
}

class _VerticalDirectionFieldState extends State<VerticalDirectionField> {

  VerticalDirection selectedOption = VerticalDirection.down;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final maixAxis in VerticalDirection.values) ...[
          VerticalDirectionRadioButton(
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

class VerticalDirectionRadioButton extends StatefulWidget {
  final VerticalDirection type;
  final VerticalDirection selectedOption;
  final Function(VerticalDirection) onTap;

  const VerticalDirectionRadioButton({
    Key? key,
    required this.type,
    required this.selectedOption,
    required this.onTap,
  }) : super(key: key);

  @override
  State<VerticalDirectionRadioButton> createState() => _VerticalDirectionRadioButtonState();
}

class _VerticalDirectionRadioButtonState extends State<VerticalDirectionRadioButton> {
  VerticalDirection result = VerticalDirection.down;
  String image = "downDirection.svg";
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case VerticalDirection.down:
        result = VerticalDirection.down;
        image = "downDirection.svg";
        break;
      case VerticalDirection.up:
        result = VerticalDirection.up;
        image = "upDirection.svg";
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
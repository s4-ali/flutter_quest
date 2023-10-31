import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AxisField extends StatefulWidget {
  final void Function(Axis) onChanged;
  final Axis value;

  const AxisField({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  State<AxisField> createState() => _AxisFieldState();
}

class _AxisFieldState extends State<AxisField> {
  Axis selectedOption = Axis.vertical;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final maixAxis in Axis.values) ...[
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
  final Axis type;
  final Axis selectedOption;
  final Function(Axis) onTap;

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
  Axis result = Axis.vertical;
  String image = "downDirection.svg";
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case Axis.vertical:
        result = Axis.vertical;
        image = "axisVertical.svg";
        break;
      case Axis.horizontal:
        result = Axis.horizontal;
        image = "axisHorizontal.svg";
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

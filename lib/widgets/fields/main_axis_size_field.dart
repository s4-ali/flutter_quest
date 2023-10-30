import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainAxisSizeField extends StatefulWidget {
  final void Function(MainAxisSize) onChanged;
  final MainAxisSize value;

  const MainAxisSizeField({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  State<MainAxisSizeField> createState() => _MainAxisSizeFieldState();
}

class _MainAxisSizeFieldState extends State<MainAxisSizeField> {

  MainAxisSize selectedOption = MainAxisSize.max;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final maixAxis in MainAxisSize.values) ...[
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
  final MainAxisSize type;
  final MainAxisSize selectedOption;
  final Function(MainAxisSize) onTap;

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
  MainAxisSize result = MainAxisSize.max;
  String image = "start.svg";
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case MainAxisSize.max:
        result = MainAxisSize.max;
        image = "maximum.svg";
        break;
      case MainAxisSize.min:
        result = MainAxisSize.min;
        image = "minimum.svg";
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

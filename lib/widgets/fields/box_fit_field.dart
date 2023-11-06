import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BoxFitField extends StatefulWidget {
  final void Function(BoxFit) onChanged;
  final BoxFit value;

  const BoxFitField({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  State<BoxFitField> createState() => _BoxFitFieldState();
}

class _BoxFitFieldState extends State<BoxFitField> {
  BoxFit selectedOption = BoxFit.fill;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final boxFit in BoxFit.values) ...[
          MainAxisRadioButton(
              type: boxFit,
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
  final BoxFit type;
  final BoxFit selectedOption;
  final Function(BoxFit) onTap;

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
  BoxFit result = BoxFit.fill;
  String image = "boxfitfill";
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case BoxFit.fill:
        result = BoxFit.fill;
        image = "boxFitFill.svg";
        break;
      case BoxFit.contain:
        result = BoxFit.contain;
        image = "boxFitContain.svg";
        break;
      case BoxFit.cover:
        result = BoxFit.cover;
        image = "boxFitCover.svg";
        break;
      case BoxFit.fitWidth:
        result = BoxFit.fitWidth;
        image = "boxFitWidthFit.svg";
        break;
      case BoxFit.fitHeight:
        result = BoxFit.fitHeight;
        image = "boxFitHeightFit.svg";
        break;
      case BoxFit.scaleDown:
        result = BoxFit.scaleDown;
        image = "boxFitScaleDown.svg";
        break;
      case BoxFit.none:
        result = BoxFit.none;
        image = "boxFitNone.svg";
        break;
    }

    return Padding(
      padding: const EdgeInsets.all(7.0),
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

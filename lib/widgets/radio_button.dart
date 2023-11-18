import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppRadioButton extends StatefulWidget {
  final bool isSelected;
  final String iconPath;
  final Function() onSelected;
  final Function(bool) onHover;

  const AppRadioButton({
    super.key,
    required this.isSelected,
    required this.iconPath,
    required this.onSelected,
    required this.onHover,
  });

  @override
  State<AppRadioButton> createState() => _AppRadioButtonState();
}

class _AppRadioButtonState extends State<AppRadioButton> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {

    Color svgColor = widget.isSelected || isHovering
        ? const Color(0xFFFFFFFF)
        : const Color(0xFF808080);
    Color borderColor = isHovering ? const Color(0xFF0099FF) : Colors.transparent;
    Color backgroundColor = widget.isSelected
        ? const Color(0xFF0099FF)
        : Colors.transparent;

    BoxDecoration boxDecoration = BoxDecoration(
      color: backgroundColor,
      borderRadius: const BorderRadius.all(
        Radius.circular(4),
      ),
      border: Border.all(
        width: 1,
        color: borderColor,
      ),
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        hoverColor: Colors.transparent,
        onTap: widget.onSelected,
        onHover: (value) {
          widget.onHover(value);
          setState(() {
            isHovering = value;
          });
        },
        child: Container(
          height: 30,
          width: 30,
          decoration: boxDecoration,
          child: Center(
            child: SvgPicture.asset(
              widget.iconPath,
              colorFilter: ColorFilter.mode(
                svgColor,
                BlendMode.srcATop,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

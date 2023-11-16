
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppRadioButton extends StatefulWidget {
  final bool isSelected;

  final String iconPath;
  final Function() onSelected;

  const AppRadioButton({
    super.key,
    required this.isSelected,
    required this.iconPath,
    required this.onSelected,
  });

  @override
  State<AppRadioButton> createState() => _AppRadioButtonState();
}

class _AppRadioButtonState extends State<AppRadioButton> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.5),
      child: InkWell(
        hoverColor: Colors.transparent,
        onTap: widget.onSelected,
        onHover: (value) {
          setState(() {
            isHovering = value;
          });
        },
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: widget.isSelected
                ? const Color(0xFF0099FF)
                : Colors.transparent,
            borderRadius: const BorderRadius.all(
              Radius.circular(4),
            ),
            border: Border.all(
              width: 1,
              color: isHovering ? const Color(0xFF0099FF) : Colors.transparent,
            ),
          ),
          child: Center(
            child: SvgPicture.asset(
              widget.iconPath,
              colorFilter: ColorFilter.mode(
                widget.isSelected || isHovering
                    ? const Color(0xFFFFFFFF)
                    : const Color(0xFF808080),
                BlendMode.srcATop,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

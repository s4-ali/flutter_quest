import 'package:flutter/material.dart';
import 'package:flutter_quest/utils/constants.dart';
import 'package:flutter_quest/utils/extensions.dart';
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
    Color svgColor = widget.isSelected
        ? context.colorScheme.onPrimary
        : isHovering
            ? context.colorScheme.onPrimaryContainer
            : context.colorScheme.onSurface;

    Color backgroundColor = widget.isSelected
        ? context.colorScheme.primary
        : isHovering
            ? context.colorScheme.primaryContainer
            : Colors.transparent;

    BoxDecoration boxDecoration = BoxDecoration(
      color: backgroundColor,
      borderRadius: const BorderRadius.all(
        Radius.circular(4),
      ),
    );

    return Padding(
      padding: const EdgeInsets.all(7.5),
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
          height: kElementHeightDense,
          width: kElementHeightDense,
          decoration: boxDecoration,
          child: Center(
            child: SvgPicture.asset(
              widget.iconPath,
              height: kElementHeightDense-10,
              width: kElementHeightDense-10,
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

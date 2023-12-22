import 'package:flutter/material.dart';

class ColorOptionBox extends StatefulWidget {
  final Function(Color)? onUpdated;
  final Color fillColor;

  final bool isSelected;

  const ColorOptionBox({
    super.key,
    required this.fillColor,
    this.isSelected = false,
    this.onUpdated,
  });

  @override
  State<ColorOptionBox> createState() => _ColorOptionBoxState();
}

class _ColorOptionBoxState extends State<ColorOptionBox> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onUpdated?.call(widget.fillColor),
      onHover: (value) {
        setState(() {
          isHovering = value;
        });
      },
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: widget.fillColor,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            color: isHovering
                ? ((widget.fillColor.computeLuminance() > 0.179)
                ? Colors.black
                : Colors.white)
                .withOpacity(0.3)
                : Colors.transparent,
          ),
          child: widget.isSelected
              ? const Center(
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: 16,
            ),
          )
              : const SizedBox(),
        ),
      ),
    );
  }
}

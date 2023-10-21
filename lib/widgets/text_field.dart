import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  final Function(String) onChanged;
  final Widget? suffixIcon;
  final String? hintText;
  final TextEditingController controller;
  final TextInputType? keyboardType;

  const AppTextField({
    super.key,
    required this.onChanged,
    this.suffixIcon,
    required this.controller,
    this.keyboardType,
    this.hintText,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}


class _AppTextFieldState extends State<AppTextField> {

  bool isHovered = false;

  @override
  Widget build(BuildContext context) {

    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: const EdgeInsets.all(14.0),
          suffixIcon: widget.suffixIcon,
          hintText: widget.hintText,
          fillColor: const Color(0xFF36343B),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(6.0)),
            borderSide: BorderSide(
              color: isHovered? const Color(0xff0099FF) : const Color(0xff35363A),
              width: 1.0,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
            borderSide: BorderSide(
              color: Color(0xff0099FF),
              width: 1.0,
            ),
          ),
        ),
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        onSubmitted: widget.onChanged,
        onEditingComplete: () => widget.onChanged(widget.controller.text),
        onTapOutside: (_) => widget.onChanged(widget.controller.text),
        maxLines: 1,
      ),
    );
  }
}

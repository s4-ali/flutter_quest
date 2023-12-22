import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  final Function(String) onChanged;
  final Widget? suffixIcon;
  final String? hintText;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final Widget? prefix;
  final TextAlign? textAlign;
  final EdgeInsets? contentPadding;

  const AppTextField({
    super.key,
    required this.onChanged,
    this.suffixIcon,
    required this.controller,
    this.keyboardType,
    this.hintText,
    this.prefix,
    this.textAlign,
    this.contentPadding,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: widget.textAlign ?? TextAlign.start,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        prefix: widget.prefix,
        contentPadding: widget.contentPadding,
        suffixIcon: widget.suffixIcon,
        hintText: widget.hintText,
      ),
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      onChanged: widget.onChanged,
      onEditingComplete: () => widget.onChanged(widget.controller.text),
      onTapOutside: (_) => widget.onChanged(widget.controller.text),
      maxLines: 1,
    );
  }
}

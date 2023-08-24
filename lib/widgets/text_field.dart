import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final Function(String) onChanged;
  final Widget suffixIcon;
  final TextEditingController controller;
  final TextInputType? keyboardType;

  const AppTextField({
    super.key,
    required this.onChanged,
    required this.suffixIcon,
    required this.controller,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          filled: true,
          isDense: true,
          contentPadding: const EdgeInsets.only(left: 14),
          suffixIcon: suffixIcon,
          fillColor: const Color(0xFF36343B),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            borderSide: BorderSide(
              color: Color(0xFF3772FF),
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            borderSide: BorderSide(
              color: Color(0xFFF2F4F7),
              width: 1,
            ),
          ),
        ),
        controller: controller,
        keyboardType: keyboardType,
        onSubmitted: onChanged,
        onEditingComplete: () => onChanged(controller.text),
        onTapOutside: (_) => onChanged(controller.text),
      ),
    );
  }
}

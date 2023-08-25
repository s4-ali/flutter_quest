import 'package:flutter/material.dart';

class PaddingTextField extends StatelessWidget {
  final double fontSize, fieldWidth, fieldHeight;
  final Function(String) onChanged;

  const PaddingTextField(
      {super.key,
      required this.fontSize,
      required this.fieldWidth,
      required this.fieldHeight,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fieldWidth,
      height: fieldHeight,
      child: TextField(
        onChanged: onChanged,
        maxLines: 1,
        style: TextStyle(fontSize: fontSize),
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(0.0),
          hintText: "0.0",
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}

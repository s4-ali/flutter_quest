import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/fields/padding_field/padding_types/all_padding.dart';
import 'package:flutter_quest/widgets/fields/padding_field/padding_types/only_padding.dart';
import 'package:flutter_quest/widgets/fields/padding_field/padding_types/symmetric_padding.dart';

class AppPaddingField extends StatefulWidget {

  final Function(EdgeInsets) onChanged;
  final EdgeInsets values;

  const AppPaddingField({
    super.key,
    required this.onChanged,
    required this.values,
  });

  @override
  State<AppPaddingField> createState() =>
      _AppPaddingFieldState<EdgeInsetsGeometry>();
}

class _AppPaddingFieldState<EdgeInsetsGeometry>
    extends State<AppPaddingField> {
  int selectedOption = 1;
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customRadioButton("All", 1),
            customRadioButton("Only", 2),
            customRadioButton("Symmetric", 3),
          ],
        ),
        Column(
          children: [
            (selectedIndex == 1) ? AllPadding(onChanged: (padding)=>{
              widget.onChanged(padding),
            }) : const SizedBox(),
            (selectedIndex == 2) ? OnlyPadding(onChanged: (padding)=>{
              widget.onChanged(padding),
            }) : const SizedBox(),
            (selectedIndex == 3) ? SymmetricPadding(onChanged: (padding)=>{
              widget.onChanged(padding),
            }) : const SizedBox(),
          ],
        ),
      ],
    );
  }

  Widget customRadioButton(String text, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = index;
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(2.5),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF36343B),
            border: Border.all(
              color:
                  (selectedOption == index) ? Colors.white : Colors.transparent,
              width: (selectedOption == index) ? 1.0 : 0.0,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Center(child: Text(text)),
          ),
        ),
      ),
    );
  }
}

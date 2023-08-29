import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/fields/padding_types.dart';

class PaddingField extends StatefulWidget {
  final void Function(EdgeInsets) onChanged;

  const PaddingField({
    super.key,
    required this.onChanged,
  });

  @override
  State<PaddingField> createState() => _PaddingFieldState();
}

class _PaddingFieldState extends State<PaddingField> {
  int selectedOption = 1;

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
            CustomRadioButton(
              text: "All",
              index: 1,
              selectedOption: selectedOption,
              onTap: (index) {
                setState(() {
                  selectedOption = index;
                });
              },
            ),
            CustomRadioButton(
              text: "Only",
              index: 2,
              selectedOption: selectedOption,
              onTap: (index) {
                setState(() {
                  selectedOption = index;
                });
              },
            ),
            CustomRadioButton(
              text: "Symmetric",
              index: 3,
              selectedOption: selectedOption,
              onTap: (index) {
                setState(() {
                  selectedOption = index;
                });
              },
            ),
          ],
        ),
        Column(
          children: [
            (selectedOption == 1)
                ? PaddingTypes(
                    paddingType: PaddingTypeSelection.all,
                    onChanged: (padding) => {
                          widget.onChanged(padding),
                        })
                : const SizedBox(),
            (selectedOption == 2)
                ? PaddingTypes(
                    paddingType: PaddingTypeSelection.only,
                    onChanged: (padding) => {
                          widget.onChanged(padding),
                        })
                : const SizedBox(),
            (selectedOption == 3)
                ? PaddingTypes(
                    paddingType: PaddingTypeSelection.symmetric,
                    onChanged: (padding) => {
                          widget.onChanged(padding),
                        })
                : const SizedBox(),
          ],
        ),
      ],
    );
  }
}

class CustomRadioButton extends StatefulWidget {
  final String text;
  final int index;
  final int selectedOption;
  final Function(int) onTap;

  const CustomRadioButton({
    super.key,
    required this.text,
    required this.index,
    required this.selectedOption,
    required this.onTap,
  });

  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap(widget.index);
      },
      child: Padding(
        padding: const EdgeInsets.all(2.5),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF36343B),
            border: Border.all(
              color: (widget.selectedOption == widget.index)
                  ? Colors.white
                  : Colors.transparent,
              width: 1.0,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 6, bottom: 10),
            child: Center(
              child: Text(widget.text),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/fields/padding_field/padding_types_layout.dart';

class PaddingField extends StatefulWidget {
  final void Function(EdgeInsets) onChanged;

  const PaddingField({
    Key? key, // Add the 'key' parameter
    required this.onChanged,
  }) : super(key: key);

  @override
  State<PaddingField> createState() => _PaddingFieldState();
}

class _PaddingFieldState extends State<PaddingField> {
  PaddingType selectedOption = PaddingType.all;

  @override
  Widget build(BuildContext context) {
    Widget paddingBoxType;

    switch (selectedOption) {
      case PaddingType.all:
        paddingBoxType = PaddingTypeLayouts(
          paddingType: PaddingType.all,
          onChanged: widget.onChanged,
        );
      case PaddingType.only:
        paddingBoxType = PaddingTypeLayouts(
          paddingType: PaddingType.only,
          onChanged: widget.onChanged,
        );
      case PaddingType.symmetric:
        paddingBoxType = PaddingTypeLayouts(
          paddingType: PaddingType.symmetric,
          onChanged: widget.onChanged,
        );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PaddingTypeSelectionRadioButton(
              text: "All",
              paddingType: PaddingType.all,
              selectedOption: selectedOption,
              onTap: () {
                setState(() {
                  selectedOption = PaddingType.all;
                });
              },
            ),
            PaddingTypeSelectionRadioButton(
              text: "Only",
              paddingType: PaddingType.only,
              selectedOption: selectedOption,
              onTap: () {
                setState(() {
                  selectedOption = PaddingType.only;
                });
              },
            ),
            PaddingTypeSelectionRadioButton(
              text: "Symmetric",
              paddingType: PaddingType.symmetric,
              selectedOption: selectedOption,
              onTap: () {
                setState(() {
                  selectedOption = PaddingType.symmetric;
                });
              },
            ),
          ],
        ),
        Column(
          children: [
            paddingBoxType,
          ],
        ),
      ],
    );
  }
}

class PaddingTypeSelectionRadioButton extends StatefulWidget {
  final String text;
  final PaddingType paddingType;
  final PaddingType selectedOption;
  final Function() onTap;

  const PaddingTypeSelectionRadioButton({
    Key? key, // Add the 'key' parameter
    required this.text,
    required this.paddingType,
    required this.selectedOption,
    required this.onTap,
  }) : super(key: key);

  @override
  State<PaddingTypeSelectionRadioButton> createState() =>
      _PaddingTypeSelectionRadioButtonState();
}

class _PaddingTypeSelectionRadioButtonState
    extends State<PaddingTypeSelectionRadioButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap();
      },
      child: Padding(
        padding: const EdgeInsets.all(2.5),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF36343B),
            border: Border.all(
              color: (widget.selectedOption == widget.paddingType)
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

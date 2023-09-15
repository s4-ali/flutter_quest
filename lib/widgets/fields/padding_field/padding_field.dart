import 'package:flutter/material.dart';

import 'padding_types_layout.dart';

class PaddingField extends StatefulWidget {
  final void Function(EdgeInsets) onChanged;

  const PaddingField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<PaddingField> createState() => _PaddingFieldState();
}

class _PaddingFieldState extends State<PaddingField> {
  PaddingType selectedOption = PaddingType.all;

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
            for (final padding in PaddingType.values) ...[
              PaddingTypeSelectionRadioButton(
                  paddingType: padding,
                  selectedOption: selectedOption,
                  onTap: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  }),
            ],
          ],
        ),
        PaddingTypeLayouts(
          onChanged: widget.onChanged,
          paddingType: selectedOption,
        )
      ],
    );
  }
}

class PaddingTypeSelectionRadioButton extends StatefulWidget {
  final PaddingType paddingType;
  final PaddingType selectedOption;
  final Function(PaddingType) onTap;

  const PaddingTypeSelectionRadioButton({
    Key? key,
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
        widget.onTap(widget.paddingType);
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
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 6,
              bottom: 10,
            ),
            child: Center(
              child: Text(
                widget.paddingType.name.capitalizeFirstLetter(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

extension StringCapitalization on String {
  String capitalizeFirstLetter() {
    if (isEmpty) {
      return this;
    }
    return this[0].toUpperCase() + substring(1);
  }
}

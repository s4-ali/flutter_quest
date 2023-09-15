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
  PaddingTypeSelection selectedOption = PaddingTypeSelection.all;

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
            for (final padding in PaddingTypeSelection.values) ...[
              CustomRadioButton(
                  paddingType: padding,
                  selectedOption: selectedOption,
                  onTap: (paddingValue) {
                    setState(() {
                      selectedOption = paddingValue;
                    });
                  }),
            ],
          ],
        ),
        PaddingTypes(
          onChanged: widget.onChanged,
          paddingType: selectedOption,
        ),
      ],
    );
  }
}

class CustomRadioButton extends StatefulWidget {
  final PaddingTypeSelection paddingType;
  final PaddingTypeSelection selectedOption;
  final Function(PaddingTypeSelection) onTap;

  const CustomRadioButton({
    super.key,
    required this.paddingType,
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

import 'package:flutter/material.dart';
import 'edge_insets_types_layout.dart';

class EdgeInsetsField extends StatefulWidget {
  final void Function(EdgeInsets) onChanged;

  const EdgeInsetsField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<EdgeInsetsField> createState() => _EdgeInsetsFieldState();
}

class _EdgeInsetsFieldState extends State<EdgeInsetsField> {
  EdgeInsetsType selectedOption = EdgeInsetsType.all;

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
            for (final edgeInsets in EdgeInsetsType.values) ...[
              EdgeInsetsTypeSelectionRadioButton(
                  edgeInsetsType: edgeInsets,
                  selectedOption: selectedOption,
                  onTap: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  }),
            ],
          ],
        ),
        EdgeInsetsTypeLayouts(
          onChanged: widget.onChanged,
          edgeInsetsType: selectedOption,
        )
      ],
    );
  }
}

class EdgeInsetsTypeSelectionRadioButton extends StatefulWidget {
  final EdgeInsetsType edgeInsetsType;
  final EdgeInsetsType selectedOption;
  final Function(EdgeInsetsType) onTap;

  const EdgeInsetsTypeSelectionRadioButton({
    Key? key,
    required this.edgeInsetsType,
    required this.selectedOption,
    required this.onTap,
  }) : super(key: key);

  @override
  State<EdgeInsetsTypeSelectionRadioButton> createState() =>
      _EdgeInsetsTypeSelectionRadioButtonState();
}

class _EdgeInsetsTypeSelectionRadioButtonState
    extends State<EdgeInsetsTypeSelectionRadioButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap(widget.edgeInsetsType);
      },
      child: Padding(
        padding: const EdgeInsets.all(2.5),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF36343B),
            border: Border.all(
              color: (widget.selectedOption == widget.edgeInsetsType)
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
              top: 10,
              bottom: 10,
            ),
            child: Center(
              child: Text(
                widget.edgeInsetsType.name.capitalizeFirstLetter(),
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

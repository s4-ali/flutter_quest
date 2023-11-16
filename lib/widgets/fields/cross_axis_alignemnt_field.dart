import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/radio_button.dart';

extension on CrossAxisAlignment{
  String get iconPath{
    switch (this) {
      case CrossAxisAlignment.start:
        return "assets/startVertical.svg";
      case CrossAxisAlignment.end:
        return "assets/endVertical.svg";
        case CrossAxisAlignment.center:
        return "assets/center.svg";
      case CrossAxisAlignment.baseline:
        return "assets/baseline.svg";
      case CrossAxisAlignment.stretch:
        return "assets/stretch.svg";
    }
  }
}

class CrossAxisAlignmentField extends StatelessWidget {
  final void Function(CrossAxisAlignment) onChanged;
  final CrossAxisAlignment value;

  const CrossAxisAlignmentField({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final axisAlignment in CrossAxisAlignment.values)
          AppRadioButton(
            isSelected: value == axisAlignment,
            iconPath: axisAlignment.iconPath,
            onSelected: () => onChanged(axisAlignment),
          ),
      ],
    );
  }
}


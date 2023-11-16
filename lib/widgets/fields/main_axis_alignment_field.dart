import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/radio_button.dart';

extension on MainAxisAlignment{
  String get iconPath {
    switch (this) {
      case MainAxisAlignment.start:
        return "assets/startVertical.svg";
      case MainAxisAlignment.end:
        return "assets/endVertical.svg";
      case MainAxisAlignment.center:
        return "assets/center.svg";
      case MainAxisAlignment.spaceBetween:
        return "assets/spaceBetween.svg";
      case MainAxisAlignment.spaceAround:
        return "assets/spaceAround.svg";
      case MainAxisAlignment.spaceEvenly:
        return "assets/spaceEvenly.svg";
      default:
        return "";
    }
  }
}

class MainAxisAlignmentField extends StatelessWidget {
  final void Function(MainAxisAlignment) onChanged;
  final MainAxisAlignment value;

  const MainAxisAlignmentField({
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
        for (final axisAlignment in MainAxisAlignment.values)
          AppRadioButton(
            isSelected: value == axisAlignment,
            iconPath: axisAlignment.iconPath,
            onSelected: () => onChanged(axisAlignment),
          ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/radio_button.dart';

extension on MainAxisSize{
  String get iconPath{
    switch (this) {
      case MainAxisSize.min:
        return "assets/minimum.svg";
      case MainAxisSize.max:
        return "assets/maximum.svg";
      default:
        return "";
    }
  }
}

class MainAxisSizeField extends StatelessWidget {
  final void Function(MainAxisSize) onChanged;
  final MainAxisSize value;

  const MainAxisSizeField({
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
        for (final axisSize in MainAxisSize.values)
          AppRadioButton(
            isSelected: value == axisSize,
            iconPath: axisSize.iconPath,
            onSelected: () => onChanged(axisSize),
          ),
      ],
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/radio_button.dart';

extension on BoxFit {
  String get iconPath {
    switch (this) {
      case BoxFit.fill:
        return "assets/boxFitFill.svg";
      case BoxFit.contain:
        return "assets/boxFitContain.svg";
      case BoxFit.cover:
        return "assets/boxFitCover.svg";
      case BoxFit.fitWidth:
        return "assets/boxFitWidthFit.svg";
      case BoxFit.fitHeight:
        return "assets/boxFitHeightFit.svg";
      case BoxFit.scaleDown:
        return "assets/boxFitScaleDown.svg";
      case BoxFit.none:
        return "assets/boxFitNone.svg";
      default:
        return "";
    }
  }
}

class BoxFitField extends StatelessWidget {
  final void Function(BoxFit) onChanged;
  final BoxFit value;

  const BoxFitField({
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
        for (final boxFit in BoxFit.values)
          AppRadioButton(
            isSelected: value == boxFit,
            iconPath: boxFit.iconPath,
            onSelected: () => onChanged(boxFit),
          ),
      ],
    );
  }
}

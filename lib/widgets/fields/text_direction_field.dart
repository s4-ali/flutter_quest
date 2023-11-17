import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/radio_button.dart';

extension on TextDirection{
  String get iconPath{
    switch(this) {
      case TextDirection.ltr:
        return "assets/leftToRight.svg";
      case TextDirection.rtl:
        return "assets/rightToLeft.svg";
      default:
        return "";
    }
  }
}

class TextDirectionField extends StatelessWidget {
  final void Function(TextDirection) onChanged;
  final TextDirection value;

  const TextDirectionField({
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
        for (final textDirection in TextDirection.values)
          AppRadioButton(
            isSelected: value == textDirection,
            iconPath: textDirection.iconPath,
            onSelected: () => onChanged(textDirection),
          ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/icon_options.dart';

extension on TextDirection {
  String get iconPath {
    switch (this) {
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
    return IconOptions(
      onChanged: (dynamic val) => onChanged(val as TextDirection),
      value: value,
      options: TextDirection.values,
      iconPath: (dynamic value) => (value as TextDirection).iconPath,
    );
  }
}

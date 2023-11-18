import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/icon_options.dart';

extension on MainAxisAlignment {
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
    return IconOptions(
      onChanged: (dynamic val) => onChanged(val as MainAxisAlignment),
      value: value,
      options: MainAxisAlignment.values,
      iconPath: (dynamic value) => (value as MainAxisAlignment).iconPath,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/icon_options.dart';

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
    return IconOptions(
      onChanged: (dynamic val) => onChanged(val as MainAxisSize),
      value: value,
      options: MainAxisSize.values,
      iconPath: (dynamic value) => (value as MainAxisSize).iconPath,
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/icon_options.dart';

extension on VerticalDirection {
  String get iconPath {
    switch (this) {
      case VerticalDirection.down:
        return "assets/downDirection.svg";
      case VerticalDirection.up:
        return "assets/upDirection.svg";
      default:
        return "";
    }
  }
}

class VerticalDirectionField extends StatelessWidget {
  final void Function(VerticalDirection) onChanged;
  final VerticalDirection value;

  const VerticalDirectionField({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return IconOptions(
      onChanged: (dynamic val) => onChanged(val as VerticalDirection),
      value: value,
      options: VerticalDirection.values,
      iconPath: (dynamic value) => (value as VerticalDirection).iconPath,
    );
  }
}

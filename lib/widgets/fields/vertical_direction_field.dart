import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/radio_button.dart';

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final direction in VerticalDirection.values)
          AppRadioButton(
            iconPath: direction.iconPath,
            isSelected: value == direction,
            onSelected: () => onChanged(direction),
          ),
      ],
    );
  }
}

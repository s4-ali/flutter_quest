import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';
import 'package:flutter_quest/widgets/text_radio_button.dart';

const values = [
  Alignment.topLeft,
  Alignment.topCenter,
  Alignment.topRight,
  Alignment.centerLeft,
  Alignment.center,
  Alignment.centerRight,
  Alignment.bottomLeft,
  Alignment.bottomCenter,
  Alignment.bottomRight,
];

extension on Alignment {
  String get title {
    switch (this) {
      case Alignment.topLeft:
        return "Top Left";
      case Alignment.topCenter:
        return "Top";
      case Alignment.topRight:
        return "Top Right";
      case Alignment.centerLeft:
        return "Left";
      case Alignment.center:
        return "Center";
      case Alignment.centerRight:
        return "Right";
      case Alignment.bottomLeft:
        return "Bottom Left";
      case Alignment.bottomCenter:
        return "Bottom";
      case Alignment.bottomRight:
        return "Bottom Right";
      default:
        return "";
    }
  }
}

class AlignmentField extends PropertyWidget<Alignment> {
  const AlignmentField({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(3, (row) {
        return Row(
          children: List.generate(3, (col) {
            Alignment option = values[row * 3 + col];
            return Expanded(
              child: TextRadioButton(
                option: option,
                onChanged: onChanged,
                isSelected: option == value,
                title: option.title,
              ),
            );
          }),
        );
      }),
    );
  }
}

class AlignmentPreviewer extends StatelessWidget {
  const AlignmentPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<Alignment>(
      values: values,
      propertyBuilder: (onChanged, value) {
        return AlignmentField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

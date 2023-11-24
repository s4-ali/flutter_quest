import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

class ShapeBorderField extends PropertyWidget<ShapeBorder> {
  const ShapeBorderField({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      fallbackHeight: 60,
    );
  }
}

class ShapeBorderPreviewer extends StatelessWidget {
  const ShapeBorderPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<ShapeBorder>(
      values: [
        const OutlineInputBorder(borderSide: BorderSide.none),
        Border.all(color: Colors.black, width: 4),
        InputBorder.none,
      ],
      propertyBuilder: (onChanged, value) {
        return ShapeBorderField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

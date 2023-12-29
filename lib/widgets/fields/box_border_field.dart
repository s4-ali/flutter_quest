import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

class BoxBorderField extends PropertyWidget<BoxBorder> {
  const BoxBorderField({
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

class BoxBorderPreviewer extends StatelessWidget {
  const BoxBorderPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<BoxBorder>(
      title: "Box Border",
      values: [
        Border.all(color: Colors.black, width: 2.0),
        const Border(
          top: BorderSide.none,
          right: BorderSide.none,
          bottom: BorderSide.none,
          left: BorderSide.none,
        ),
      ],
      propertyBuilder: (onChanged, value) {
        return BoxBorderField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

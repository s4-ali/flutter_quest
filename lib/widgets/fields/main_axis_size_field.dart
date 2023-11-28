import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

class MainAxisSizeField extends PropertyWidget<MainAxisSize> {

  const MainAxisSizeField({
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

class MainAxisSizePreviewer extends StatelessWidget {
  const MainAxisSizePreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<MainAxisSize>(
      values: MainAxisSize.values,
      propertyBuilder: (onChanged, value) {
        return MainAxisSizeField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}
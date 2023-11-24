import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

class CurveField extends PropertyWidget<Curve> {

  const CurveField({
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

class CurvePreviewer extends StatelessWidget {
  const CurvePreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<Curve>(
      values: const [Curves.linear, Curves.bounceIn, Curves.bounceOut],
      propertyBuilder: (onChanged, value) {
        return CurveField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class SizedBoxPropertyExplorer extends StatelessWidget {
  const SizedBoxPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "SizedBox",
      builder: (provider) {
        final height = provider.heightField();
        final width = provider.widthField();
        final isRed = provider.booleanField(
          id: "isRed", title: "Is Red", initial: false,);
        final color = isRed == null ? Colors.green : isRed ? Colors.red : Colors
            .blue;
        return SizedBox(
          height: height,
          width: width,
          child: ColoredBox(
            color: color,
          ),
        );
      },
    );
  }
}

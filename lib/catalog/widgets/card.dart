import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class CardPropertyExplorer extends StatelessWidget {
  const CardPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Card",
      builder: (provider) {
        final elevation = provider.elevationField();
        final isRed = provider.booleanField(id: "isRed", title: "Is Red");
        final color = isRed == null
            ? Colors.green
            : isRed
                ? Colors.red
                : Colors.blue;

        final shadowColor = isRed == null
            ? Colors.green
            : isRed
                ? Colors.red
                : Colors.blue;

        return Card(
          elevation: elevation,
          color: color,
          shadowColor: shadowColor,
        );
      },
    );
  }
}

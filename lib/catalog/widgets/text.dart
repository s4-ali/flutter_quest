import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class TextPropertyExplorer extends StatelessWidget {
  const TextPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Text",
      builder: (provider) {
        final size = provider.sizeField();
        final isRed = provider.booleanField(id: "isRed", title: "Is Red");
        final color = isRed == null
            ? Colors.green
            : isRed
                ? Colors.red
                : Colors.blue;

        return Text(
          "Text",
          style: TextStyle(
            color: color,
            fontSize: size,
          ),
        );
      },
    );
  }
}

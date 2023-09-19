import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/edge_insets_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class PropertyPlayground extends StatelessWidget {
  const PropertyPlayground({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Playground",
      builder: (provider) {
        final height = provider.heightField();
        final width = provider.widthField();
        final isRed = provider.booleanField(id: "isRed", title: "Is Red");
        final text = provider.listField<String>(
          title: "String",
          id: 'string',
          values: [
            "One",
            "Two",
            "Three",
            "Four",
          ],
        );
        final padding = provider.edgeInsetsField(id: 'padding', title: 'Padding', );
        final margin = provider.edgeInsetsField(id: 'margin', title: 'Margin', );

        final color = isRed == null
            ? Colors.green
            : isRed
                ? Colors.red
                : Colors.blue;

        return Container(
          height: height,
          width: width,
          padding: padding,
          margin: margin,
          decoration: BoxDecoration(
            color: color,
          ),
          child: text == null
              ? null
              : Center(
                  child: Text(text),
                ),
        );
      },
    );
  }
}

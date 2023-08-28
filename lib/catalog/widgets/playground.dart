import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/alignment_field.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
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

        final color = isRed == null
            ? Colors.green
            : isRed
                ? Colors.red
                : Colors.blue;
        final alignment = provider.alignmentField(id: "alignment", title: "Alignment");

        return Align(
          alignment: alignment?? Alignment.center,
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: color,
            ),
            child: text == null
                ? null
                : Center(
                    child: Text(text),
                  ),
          ),
        );
      },
    );
  }
}

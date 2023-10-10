import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class ContainerPropertyExplorer extends StatelessWidget {
  const ContainerPropertyExplorer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Container",
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

        return Row(
          verticalDirection: VerticalDirection.up,
          children: [
            Column(
              verticalDirection: VerticalDirection.up,
              children: [
                Container(
                  height: height,
                  width: width,
                  alignment: Alignment.center,
                  color: Colors.black,
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  transform: Matrix4.skewX(20),
                  decoration: BoxDecoration(
                    color: color,
                  ),
                  foregroundDecoration:const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  clipBehavior: Clip.none,
                  constraints:const BoxConstraints(
                    minWidth: 0.0,
                    maxWidth: double.infinity,
                    minHeight: 0.0,
                    maxHeight: double.infinity,
                  ),
                  transformAlignment: Alignment.center,
                  child: text == null
                      ? null
                      : Center(
                          child: Text(text),
                        ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

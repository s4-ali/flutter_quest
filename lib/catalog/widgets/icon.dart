import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class IconPropertyExplorer extends StatelessWidget {
  const IconPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Icon",
      builder: (provider) {
        final size = provider.sizeField();

        final isRed = provider.booleanField(id: "isRed", title: "Is Red");
        final color = isRed == null
            ? Colors.green
            : isRed
                ? Colors.red
                : Colors.blue;

        return Icon(
          Icons.access_alarm_sharp,
          size: size,
          color: color,
          textDirection: TextDirection.rtl,
        );
      },
    );
  }
}

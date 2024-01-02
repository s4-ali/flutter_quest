import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/utils/extensions.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';
import 'package:flutter_quest/property_fields/number_field.dart';

class DividerPropertyExplorer extends StatelessWidget {
  const DividerPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Divider",
      builder: (provider) {
        final height = provider.heightField();
        final thickness = provider.doubleField(
          id: "thickness",
          title: "Thickness",
          initialValue: 5
        );
        final indent = provider.doubleField(
          id: "indent",
          title: "Indent",
          initialValue: 10,
        );
        final endIndent = provider.doubleField(
          id: "endIndent",
          title: "End Indent",
          initialValue: 10,
        );
        final color = provider.colorField(
          id: "color",
          title: 'Color',
          initialValue: context.theme.primaryColor,
        );

        return (
          widget: Divider(
            height: height,
            thickness: thickness,
            indent: indent,
            endIndent: endIndent,
            color: color,
          ),
          code: """
          Divider(
            height: $height,
            thickness: $thickness,
            indent: $indent,
            endIndent: $endIndent,
            color: $color,
          )""",
        );
      },
    );
  }
}

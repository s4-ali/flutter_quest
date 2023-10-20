import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
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
        final thickness = provider.doubleField(id: "thickness", title: "Thickness");
        final indent = provider.doubleField(id: "thickness", title: "Thickness");
        final endIndent = provider.doubleField(id: "thickness", title: "Thickness");
        final color = provider.colorField(id: "color", title: 'Color');
        return Divider(
          height: height,
          thickness: thickness,
          indent: indent,
          endIndent: endIndent,
          color: color,
        );
      },
    );
  }
}

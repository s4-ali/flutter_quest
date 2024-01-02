import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/shape_border_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';
import 'package:flutter_quest/property_fields/number_field.dart';

class DrawerPropertyExplorer extends StatelessWidget {
  const DrawerPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Drawer",
      builder: (provider) {
        final width = provider.widthField();
        final bgColor =
            provider.colorField(id: "bgColor", title: "Background Color");
        final elevation =
            provider.doubleField(id: "elevation", title: "Elevation");
        final shadowColor =
            provider.colorField(id: "shadowColor", title: "Shadow Color");
        final surfaceColor = provider.colorField(
            id: "surfaceColor", title: "Surface Tint Color");
        final shape = provider.shapeBorderField(id: "shape", title: "Shape");
        final semanticLabel =
            provider.stringField(id: "semanticLabel", title: "Semantic Label");
        final clipBehavior =
            provider.clipField(id: "clipBehavior", title: "Clip Behavior");

        return (
          widget: Drawer(
            width: width,
            backgroundColor: bgColor,
            elevation: elevation,
            shadowColor: shadowColor,
            surfaceTintColor: surfaceColor,
            shape: shape,
            semanticLabel: semanticLabel,
            clipBehavior: clipBehavior,
            child: ListView(),
          ),
          code: "Drawer code goes here...",
        );
      },
    );
  }
}

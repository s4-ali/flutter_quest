import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/border_radius_field.dart';


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
        final color = provider.colorField(id: "bgColor", title: "Background Color");
        final surfaceColor = provider.colorField(id: "surfaceColor", title: "Surface Tint Color");
        final elevation = provider.numberField(id: "elevation", title: "Elevation")?? 0.0;
        final shadowColor = provider.colorField(id: "shadowColor", title: "Shadow Color");
        final borderRadius = provider.borderRadiusField(id: "borderRadius", title: "Border Radius")?? BorderRadius.zero;
        final clipBehavior = provider.clipField(id: "clipBehavior", title: "Clip Behavior");

        return Drawer(
          width: width,
          backgroundColor: color,
          elevation: elevation.toDouble(),
          shadowColor: shadowColor,
          surfaceTintColor: surfaceColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
            side: BorderSide.none,
          ),
          clipBehavior: clipBehavior,
          semanticLabel: "Drawer",
          child: ListView(),
        );
      },
    );
  }
}

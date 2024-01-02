import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/edge_insets_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/shape_border_field.dart';
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
        final elevation =
            provider.doubleField(id: "elevation", title: "Elevation");
        final color = provider.colorField(id: "color", title: "Color");
        final shadowColor =
            provider.colorField(id: "ShadowColor", title: "Shadow Color");
        final surfaceTintColor = provider.colorField(
            id: "surfaceTintColor", title: "Surface Tint Color");
        final shape = provider.shapeBorderField(id: "shape", title: "Shape");
        final borderForeground = provider.booleanField(
            id: "borderForeground", title: "Border on Foreground");
        final margin = provider.edgeInsetsField(id: "margin", title: "Margin");
        final clipBehavior =
            provider.clipField(id: "clip", title: "Clip Behavior");
        final semanticContainer = provider.booleanField(
            id: "semanticContainer", title: "Semantic Container");

        return (
          widget: Card(
            color: color,
            shadowColor: shadowColor,
            surfaceTintColor: surfaceTintColor,
            elevation: elevation,
            shape: shape,
            borderOnForeground: borderForeground ?? true,
            margin: margin,
            clipBehavior: clipBehavior,
            semanticContainer: semanticContainer ?? true,
            child: const Center(child: Text("Card")),
          ),
          code: "Card code goes here",
        );
      },
    );
  }
}

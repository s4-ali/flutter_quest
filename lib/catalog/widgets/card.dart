import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/edge_insets_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
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
            provider.numberField(id: "elevation", title: "Elevation") ?? 0.0;
        final color = provider.colorField(id: "color", title: "Color");
        final shadowColor =
            provider.colorField(id: "ShadowColor", title: "Shadow Color");
        final surfaceTintColor = provider.colorField(
            id: "surfaceTintColor", title: "Surface Tint Color");
        final borderColor = provider.colorField(
          id: "borderColor",
          title: "Border Color",
        );
        final borderWidth =
            provider.numberField(id: "borderWidth", title: "Border Width") ??
                1.0;
        final borderStyle = provider.listField<BorderStyle>(
            id: "borderStyle",
            title: "Border Style",
            values: BorderStyle.values);
        final strokeAlign =
            provider.numberField(id: "strokeAlign", title: "Stroke Align") ??
                0.0;
        final borderForeground = provider.booleanField(id: "borderForeground", title: "Border on Foreground");
        final margin = provider.edgeInsetsField(id: "margin", title: "Margin");
        final clipBehavior = provider.clipField(id: "clip", title: "Clip Behavior");
        final semanticContainer = provider.booleanField(id: "semanticContainer", title: "Semantic Container");

        return Card(
          color: color,
          shadowColor: shadowColor,
          surfaceTintColor: surfaceTintColor,
          elevation: elevation.toDouble(),
          shape: CircleBorder(
            side: BorderSide(
              color: borderColor ?? const Color(0xFF000000),
              width: borderWidth.toDouble(),
              style: borderStyle ?? BorderStyle.solid,
              strokeAlign: strokeAlign.toDouble(),
            ),
          ),
          borderOnForeground: borderForeground?? true,
          margin: margin,
          clipBehavior: clipBehavior,
          semanticContainer: semanticContainer?? true,
        );
      },
    );
  }
}

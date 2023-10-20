import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/icon_data_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field_field.dart';
import 'package:flutter_quest/property_fields/text_direction_field.dart';
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

        final icon = provider.iconDataField(id: "icon", title: "Icon");
        final size = provider.doubleField(id: "iconSize", title: "Icon Size");
        final fill = provider.doubleField(id: "fill", title: "Fill");
        final weight = provider.doubleField(id: "weight", title: "Weight");
        final grade = provider.doubleField(id: "grade", title: "Grade");
        final opticalSize =
            provider.doubleField(id: "opticalSize", title: "Optical Size");
        final color = provider.colorField(id: "color", title: "Color");

        final shadowColor =
            provider.colorField(id: "shadowColor", title: "Shadow Color");
        final scaleX = provider.doubleField(id: "scaleX", title: "ScaleX");
        final scaleY = provider.doubleField(id: "scaleY", title: "ScaleY");
        final shadowBlurRadius = provider.doubleField(
            id: "shadowBlurRadius", title: "Shadow Blur Radius");
        final shadowSpreadRadius = provider.doubleField(
            id: "shadowSpreadRadius", title: "Shadow Spread Radius");
        final blurStyle = provider.listField(
            id: "blurStyle", title: "Blur Style", values: BlurStyle.values);

        final semanticLabel =
            provider.stringField(id: "semanticLabel", title: "Semantic Label");
        final textDirection = provider.textDirectionField(
            id: "textDirection", title: "textDirection");

        return Icon(
          icon,
          size: size,
          fill: fill,
          weight: weight,
          grade: grade,
          opticalSize: opticalSize,
          color: color,
          shadows: [
            BoxShadow(
              color: shadowColor ?? const Color(0xFF000000),
              offset: Offset(scaleX ?? 0.0, scaleY ?? 0.0),
              blurRadius: shadowBlurRadius ?? 0.0,
              spreadRadius: shadowSpreadRadius ?? 0.0,
              blurStyle: blurStyle ?? BlurStyle.normal,
            )
          ],
          semanticLabel: semanticLabel,
          textDirection: textDirection,
        );
      },
    );
  }
}

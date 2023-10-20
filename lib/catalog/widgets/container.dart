import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/alignment_field.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/edge_insets_field.dart';
import 'package:flutter_quest/property_fields/matrix4_field.dart';
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
        final alignment =
            provider.alignmentField(id: "alignment", title: "Alignment");
        final margin = provider.edgeInsetsField(id: "margin", title: "Margin");
        final padding =
            provider.edgeInsetsField(id: "padding", title: "Padding");
        final color = provider.colorField(id: "color", title: "Color");
        final foregroundColor =
            provider.colorField(id: "fgColor", title: "Foreground Color");
        final transform =
            provider.matrix4Field(id: "transform", title: "Transform");
        final clipBehavior =
            provider.clipField(id: "clipBehavior", title: "Clip Behavior") ??
                Clip.none;
        final minHeight =
            provider.heightField(id: "minHeight", title: "Minimum Height") ??
                0.0;
        final maxHeight =
            provider.heightField(id: "maxHeight", title: "Maximum Height") ??
                double.infinity;
        final minWidth =
            provider.widthField(id: "minWidth", title: "Minimum Width") ?? 0.0;
        final maxWidth =
            provider.widthField(id: "maxWidth", title: "Maximum Width") ??
                double.infinity;
        final transformAlignment = provider.alignmentField(
            id: "transformAlignment", title: "Transform Alignment");

        return Container(
          height: height,
          width: width,
          alignment: alignment,
          margin: margin,
          padding: padding,
          transform: transform,
          decoration: BoxDecoration(
            color: color,
          ),
          foregroundDecoration: BoxDecoration(
            color: foregroundColor,
          ),
          clipBehavior: clipBehavior,
          constraints: BoxConstraints(
            minWidth: minWidth,
            maxWidth: maxWidth,
            minHeight: minHeight,
            maxHeight: maxHeight,
          ),
          transformAlignment: transformAlignment,
          child: Container(),
        );
      },
    );
  }
}

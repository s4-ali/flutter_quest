import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/alignment_field.dart';
import 'package:flutter_quest/property_fields/border_radius_field.dart';
import 'package:flutter_quest/property_fields/box_border_field.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/curve_field.dart';
import 'package:flutter_quest/property_fields/edge_insets_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/matrix4_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class AnimatedContainerPropertyExplorer extends StatelessWidget {
  const AnimatedContainerPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "AnimatedContainer",
      builder: (provider) {
        final alignment =
            provider.alignmentField(id: "alignment", title: "Alignment");
        final padding =
            provider.edgeInsetsField(id: "padding", title: "Padding");
        final color = provider.colorField(id: "color", title: "Color");
        final border = provider.borderField(id: "border", title: "Border");
        final borderRadius = provider.borderRadiusField(
            id: "borderRadius", title: "Border Radius");

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
        final backgroundBlendMode = provider.listField<BlendMode>(
            id: "backgroundBlendMode",
            title: "Background Blend Mode",
            values: BlendMode.values);
        final shape = provider.listField<BoxShape>(
            id: "shape", title: "Shape", values: BoxShape.values);

        final fgShadowColor = provider.colorField(
            id: "shadowColor", title: "Foreground Shadow Color");
        final fgScaleX =
            provider.doubleField(id: "scaleX", title: "Foreground ScaleX");
        final fgScaleY =
            provider.doubleField(id: "scaleY", title: "Foreground ScaleY");
        final fgShadowBlurRadius = provider.doubleField(
            id: "shadowBlurRadius", title: "Foreground Shadow Blur Radius");
        final fgShadowSpreadRadius = provider.doubleField(
            id: "shadowSpreadRadius", title: "Foreground Shadow Spread Radius");
        final fgBlurStyle = provider.listField(
            id: "blurStyle",
            title: "Foreground Blur Style",
            values: BlurStyle.values);
        final fgBackgroundBlendMode = provider.listField<BlendMode>(
            id: "backgroundBlendMode",
            title: "Foreground Background BlendMode",
            values: BlendMode.values);
        final fgShape = provider.listField<BoxShape>(
            id: "shape", title: "Foreground Shape", values: BoxShape.values);

        final width = provider.widthField();
        final height = provider.heightField();
        final minWidth =
            provider.doubleField(id: "minWidth", title: "Minimum Width");
        final maxWidth =
            provider.doubleField(id: "maxWidth", title: "Maximum Width");
        final minHeight =
            provider.doubleField(id: "minHeight", title: "Minimum Height");
        final maxHeight =
            provider.doubleField(id: "maxHeight", title: "Maximum Height");

        final margin = provider.edgeInsetsField(id: "margin", title: "Margin");
        final transform =
            provider.matrix4Field(id: "transform", title: "Transform");
        final transformAlignment = provider.alignmentField(
            id: "transformAlignment", title: "Transform Alignment");
        final clipBehavior =
            provider.clipField(id: "clipBehavior", title: "Clip Behavior");
        final curve = provider.curveField(id: "curve", title: "Curve");

        return (
          widget: AnimatedContainer(
            alignment: alignment,
            padding: padding,
            color: color,
            decoration: BoxDecoration(
              border: border,
              borderRadius: borderRadius,
              boxShadow: [
                BoxShadow(
                  color: shadowColor ?? const Color(0xFF000000),
                  offset: Offset(scaleX ?? 0.0, scaleY ?? 0.0),
                  blurRadius: shadowBlurRadius ?? 0.0,
                  spreadRadius: shadowSpreadRadius ?? 0.0,
                  blurStyle: blurStyle ?? BlurStyle.normal,
                )
              ],
              backgroundBlendMode: backgroundBlendMode,
              shape: shape ?? BoxShape.rectangle,
            ),
            foregroundDecoration: BoxDecoration(
              border: border,
              borderRadius: borderRadius,
              boxShadow: [
                BoxShadow(
                  color: fgShadowColor ?? const Color(0xFF000000),
                  offset: Offset(fgScaleX ?? 0.0, fgScaleY ?? 0.0),
                  blurRadius: fgShadowBlurRadius ?? 0.0,
                  spreadRadius: fgShadowSpreadRadius ?? 0.0,
                  blurStyle: fgBlurStyle ?? BlurStyle.normal,
                )
              ],
              backgroundBlendMode: fgBackgroundBlendMode,
              shape: fgShape ?? BoxShape.rectangle,
            ),
            width: width,
            height: height,
            constraints: BoxConstraints(
              minWidth: minWidth ?? 0.0,
              maxWidth: maxWidth ?? 0.0,
              minHeight: minHeight ?? 0.0,
              maxHeight: maxHeight ?? 0.0,
            ),
            margin: margin,
            transform: transform,
            transformAlignment: transformAlignment,
            clipBehavior: clipBehavior ?? Clip.none,
            curve: curve ?? Curves.linear,
            duration: const Duration(seconds: 1),
            onEnd: () {},
            child: const Center(
              child: Text(
                'Animated Container',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          code: "Animated Container Code goes here...",
        );
      },
    );
  }
}

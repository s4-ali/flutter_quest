import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
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

typedef AnimatedContainerProperties = ({
  ValueHolder<Alignment?> alignment,
  ValueHolder<EdgeInsets?> padding,
  ValueHolder<Color?> color,
  ValueHolder<BoxBorder?> border,
  ValueHolder<BorderRadiusGeometry?> borderRadius,
  ValueHolder<Color?> shadowColor,
  ValueHolder<double?> scaleX,
  ValueHolder<double?> scaleY,
  ValueHolder<double?> shadowSpreadRadius,
  ValueHolder<BlurStyle?> blurStyle,
  ValueHolder<BlendMode?> backgroundBlendMode,
  ValueHolder<BoxShape?> shape,
  ValueHolder<Color?> fgShadowColor,
  ValueHolder<double?> fgScaleX,
  ValueHolder<double?> fgScaleY,
  ValueHolder<double?> shadowBlurRadius,
  ValueHolder<double?> fgShadowBlurRadius,
  ValueHolder<double?> fgShadowSpreadRadius,
  ValueHolder<BlurStyle?> fgBlurStyle,
  ValueHolder<BlurStyle?> gBlurStyle,
  ValueHolder<BlendMode?> fgBackgroundBlendMode,
  ValueHolder<BoxShape?> fgShape,
  ValueHolder<double?> width,
  ValueHolder<double?> height,
  ValueHolder<double?> minWidth,
  ValueHolder<double?> maxWidth,
  ValueHolder<double?> minHeight,
  ValueHolder<double?> maxHeight,
  ValueHolder<EdgeInsets?> margin,
  ValueHolder<Matrix4?> transform,
  ValueHolder<Alignment?> transformAlignment,
  ValueHolder<Clip?> clipBehavior,
  ValueHolder<Curve?> curve,
});

class AnimatedContainerPropertiesNotifier
    extends PropertiesNotifier<AnimatedContainerProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return AnimatedContainer(
      alignment: fieldValues.alignment.isSet ? fieldValues.alignment.value : null,
      padding: fieldValues.padding.isSet?fieldValues.padding.value : null,
      color: fieldValues.color.isSet?fieldValues.color.value : null,
      decoration: BoxDecoration(
        border: fieldValues.border.isSet?fieldValues.border.value : null,
        borderRadius: fieldValues.borderRadius.isSet?fieldValues.borderRadius.value : null,
        boxShadow: [
          BoxShadow(
            color: fieldValues.shadowColor.isSet?fieldValues.shadowColor.value! : Color(0xFF000000),
            offset:
            Offset(
                fieldValues.scaleX.isSet?fieldValues.scaleX.value! : 0.0,
                fieldValues.scaleY.isSet?fieldValues.scaleY.value! : 0.0),
            blurRadius: fieldValues.shadowBlurRadius.isSet?fieldValues.shadowBlurRadius.value! : 0.0,
            spreadRadius:fieldValues.shadowSpreadRadius.isSet?fieldValues.shadowSpreadRadius.value!:0.0,
            blurStyle: fieldValues.blurStyle.isSet?fieldValues.blurStyle.value!: BlurStyle.normal,
          )
        ],
        backgroundBlendMode: fieldValues.backgroundBlendMode.isSet?fieldValues.backgroundBlendMode.value : null,
        shape: fieldValues.shape.isSet?fieldValues.shape.value! : BoxShape.rectangle,
      ),
      foregroundDecoration: BoxDecoration(
        border: fieldValues.border.isSet?fieldValues.border.value : null,
        borderRadius: fieldValues.borderRadius.isSet?fieldValues.borderRadius.value : null,
        boxShadow: [
          BoxShadow(
            color:  fieldValues.fgShadowColor.isSet?fieldValues.fgShadowColor.value! : Color(0xFF000000),
            offset: Offset(
                fieldValues.fgScaleX.isSet?fieldValues.fgScaleX.value! : 0.0,
                fieldValues.fgScaleY.isSet?fieldValues.fgScaleY.value! : 0.0),
            blurRadius: fieldValues.fgShadowBlurRadius.isSet?fieldValues.fgShadowBlurRadius.value! : 0.0,
            spreadRadius: fieldValues.fgShadowSpreadRadius.isSet?fieldValues.fgShadowSpreadRadius.value! : 0.0,
            blurStyle: fieldValues.fgBlurStyle.isSet?fieldValues.fgBlurStyle.value!: BlurStyle.normal,
          )
        ],
        backgroundBlendMode: fieldValues.fgBackgroundBlendMode.isSet?fieldValues.fgBackgroundBlendMode.value : null,
        shape: fieldValues.fgShape.isSet?fieldValues.fgShape.value! : BoxShape.rectangle,
      ),
      width: fieldValues.width.isSet?fieldValues.width.value : null,
      height: fieldValues.height.isSet?fieldValues.height.value : null,
      constraints: BoxConstraints(
        minWidth: fieldValues.minWidth.isSet?fieldValues.minWidth.value! : 0.0,
        maxWidth: fieldValues.maxWidth.isSet?fieldValues.maxWidth.value! : 0.0,
        minHeight: fieldValues.minHeight.isSet?fieldValues.minHeight.value! : 0.0,
        maxHeight: fieldValues.maxHeight.isSet?fieldValues.maxHeight.value! : 0.0,
      ),
      margin: fieldValues.margin.isSet?fieldValues.margin.value : null,
      transform: fieldValues.transform.isSet?fieldValues.transform.value : null,
      transformAlignment: fieldValues.transformAlignment.isSet?fieldValues.transformAlignment.value : null,
      clipBehavior: fieldValues.clipBehavior.isSet?fieldValues.clipBehavior.value! : Clip.none,
      curve: fieldValues.curve.isSet?fieldValues.curve.value! : Curves.linear,
      duration: const Duration(seconds: 1),
      onEnd: () {},
      child: const Center(
        child: Text(
          'Animated Container',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  String get code => '''
   AnimatedContainer(
      alignment: ${fieldValues.alignment},
      padding: ${fieldValues.padding},
      color: ${fieldValues.color},
      decoration: BoxDecoration(
        border: ${fieldValues.border},
        borderRadius: ${fieldValues.borderRadius},
        boxShadow: [
          BoxShadow(
            color: ${fieldValues.shadowColor} ?? const Color(0xFF000000),
            offset:
                Offset(${fieldValues.scaleX} ?? 0.0, ${fieldValues.scaleY} ?? 0.0),
            blurRadius: ${fieldValues.shadowBlurRadius} ?? 0.0,
            spreadRadius: ${fieldValues.shadowSpreadRadius} ?? 0.0,
            blurStyle: ${fieldValues.blurStyle} ?? BlurStyle.normal,
          )
        ],
        backgroundBlendMode: ${fieldValues.backgroundBlendMode},
        shape: ${fieldValues.shape} ?? BoxShape.rectangle,
      ),
      foregroundDecoration: BoxDecoration(
        border: ${fieldValues.border},
        borderRadius: ${fieldValues.borderRadius},
        boxShadow: [
          BoxShadow(
            color: ${fieldValues.fgShadowColor} ?? const Color(0xFF000000),
            offset: Offset(
                ${fieldValues.fgScaleX} ?? 0.0, ${fieldValues.fgScaleY} ?? 0.0),
            blurRadius: ${fieldValues.fgShadowBlurRadius} ?? 0.0,
            spreadRadius: ${fieldValues.fgShadowSpreadRadius} ?? 0.0,
            blurStyle: ${fieldValues.fgBlurStyle} ?? BlurStyle.normal,
          )
        ],
        backgroundBlendMode: ${fieldValues.fgBackgroundBlendMode},
        shape: ${fieldValues.fgShape} ?? BoxShape.rectangle,
      ),
      width: ${fieldValues.width},
      height: ${fieldValues.height},
      constraints: BoxConstraints(
        minWidth: ${fieldValues.minWidth} ?? 0.0,
        maxWidth: ${fieldValues.maxWidth} ?? 0.0,
        minHeight: ${fieldValues.minHeight} ?? 0.0,
        maxHeight: ${fieldValues.maxHeight} ?? 0.0,
      ),
      margin: ${fieldValues.margin},
      transform: ${fieldValues.transform},
      transformAlignment: ${fieldValues.transformAlignment},
      clipBehavior: ${fieldValues.clipBehavior} ?? Clip.none,
      curve: ${fieldValues.curve} ?? Curves.linear,
      duration: const Duration(seconds: 1),
      onEnd: () {},
      child: const Center(
        child: Text(
          'Animated Container',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  ''';

  @override
  AnimatedContainerProperties get fieldValues => (
        alignment: getValueOf('alignment'),
        padding: getValueOf('padding'),
        color: getValueOf('color'),
        border: getValueOf('border'),
        borderRadius: getValueOf('borderRadius'),
        shadowColor: getValueOf('shadowColor'),
        scaleX: getValueOf('scaleX'),
        scaleY: getValueOf('scaleY'),
        shadowBlurRadius: getValueOf('shadowBlurRadius'),
        shadowSpreadRadius: getValueOf('shadowSpreadRadius'),
        blurStyle: getValueOf('blurStyle'),
        shape: getValueOf('shape'),
        backgroundBlendMode: getValueOf('backgroundBlendMode'),
        fgShadowColor: getValueOf('fgShadowColor'),
        fgScaleX: getValueOf('fgScaleX'),
        fgScaleY: getValueOf('fgScaleY'),
        fgShadowBlurRadius: getValueOf('fgShadowBlurRadius'),
        fgShadowSpreadRadius: getValueOf('fgShadowSpreadRadius'),
        fgBlurStyle: getValueOf('fgBlurStyle'),
        gBlurStyle: getValueOf('gBlurStyle'),
        fgBackgroundBlendMode: getValueOf('fgBackgroundBlendMode'),
        fgShape: getValueOf('fgShape'),
        width: getValueOf('width'),
        height: getValueOf('height'),
        minWidth: getValueOf('minWidth'),
        maxWidth: getValueOf('maxWidth'),
        minHeight: getValueOf('minHeight'),
        maxHeight: getValueOf('maxHeight'),
        margin: getValueOf('margin'),
        transform: getValueOf('transform'),
        transformAlignment: getValueOf('transformAlignment'),
        clipBehavior: getValueOf('clipBehavior'),
        curve: getValueOf('curve'),
      );

  @override
  void registerFields() {
    alignmentField(id: "alignment", title: "Alignment");
    edgeInsetsField(id: "padding", title: "Padding");
    colorField(id: "color", title: "Color");
    borderField(id: "border", title: "Border");
    borderRadiusField(id: "borderRadius", title: "Border Radius");
    colorField(id: "shadowColor", title: "Shadow Color");
    doubleField(id: "scaleX", title: "ScaleX");
    doubleField(id: "scaleY", title: "ScaleY");
    doubleField(id: "shadowBlurRadius", title: "Shadow Blur Radius");
    doubleField(id: "shadowSpreadRadius", title: "Shadow Spread Radius");
    listField(id: "blurStyle", title: "Blur Style", values: BlurStyle.values);
    listField<BlendMode>(
        id: "backgroundBlendMode",
        title: "Background Blend Mode",
        values: BlendMode.values);
    listField<BoxShape>(id: "shape", title: "Shape", values: BoxShape.values);
    colorField(id: "shadowColor", title: "Foreground Shadow Color");
    doubleField(id: "scaleX", title: "Foreground ScaleX");
    doubleField(id: "scaleY", title: "Foreground ScaleY");
    doubleField(id: "shadowBlurRadius", title: "Foreground Shadow Blur Radius");
    doubleField(
        id: "shadowSpreadRadius", title: "Foreground Shadow Spread Radius");
    listField(
        id: "blurStyle",
        title: "Foreground Blur Style",
        values: BlurStyle.values);
    listField<BlendMode>(
        id: "backgroundBlendMode",
        title: "Foreground Background BlendMode",
        values: BlendMode.values);
    listField<BoxShape>(
        id: "shape", title: "Foreground Shape", values: BoxShape.values);
    widthField();
    heightField();
    doubleField(id: "minWidth", title: "Minimum Width");
    doubleField(id: "maxWidth", title: "Maximum Width");
    doubleField(id: "minHeight", title: "Minimum Height");

    doubleField(id: "maxHeight", title: "Maximum Height");

    edgeInsetsField(id: "margin", title: "Margin");

    matrix4Field(id: "transform", title: "Transform");
    alignmentField(id: "transformAlignment", title: "Transform Alignment");

    clipField(id: "clipBehavior", title: "Clip Behavior");

    curveField(id: "curve", title: "Curve");
  }
}

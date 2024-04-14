import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/alignment_field.dart';
import 'package:flutter_quest/property_fields/border_radius_field.dart';
import 'package:flutter_quest/property_fields/box_border_field.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/edge_insets_field.dart';
import 'package:flutter_quest/property_fields/matrix4_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';

typedef ContainerProperties = ({
  ValueHolder<double?> height,
  ValueHolder<double?> width,
  ValueHolder<Alignment?> alignment,
  ValueHolder<EdgeInsets?> margin,
  ValueHolder<EdgeInsets?> padding,
  ValueHolder<Color?> color,
  ValueHolder<BorderRadius?> borderRadius,
  ValueHolder<BoxBorder?> border,
  ValueHolder<Color?> foregroundColor,
  ValueHolder<Matrix4?> transform,
  ValueHolder<Clip?> clipBehavior,
  ValueHolder<double?> minHeight,
  ValueHolder<double?> maxHeight,
  ValueHolder<double?> minWidth,
  ValueHolder<double?> maxWidth,
  ValueHolder<Alignment?> transformAlignment,
});

class ContainerPropertiesNotifier
    extends PropertiesNotifier<ContainerProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    // TODO: Use field values instead
    return Container(
      height: fieldValues.height.isSet ? fieldValues.height.value : null,
      width: fieldValues.width.isSet ? fieldValues.width.value : null,
      alignment: fieldValues.alignment.isSet ? fieldValues.alignment.value : null,
      margin: fieldValues.margin.isSet ? fieldValues.margin.value : null,
      padding: fieldValues.padding.isSet ? fieldValues.padding.value : null,
      transform: fieldValues.transform.isSet ? fieldValues.transform.value : null,
      decoration: BoxDecoration(
        color: fieldValues.color.isSet ? fieldValues.color.value : null,
        borderRadius: fieldValues.borderRadius.isSet ? fieldValues.borderRadius.value : null,
        border: fieldValues.border.isSet ? fieldValues.border.value : null,
      ),
      foregroundDecoration: BoxDecoration(
        color: fieldValues.foregroundColor.isSet ? fieldValues.foregroundColor.value : null,
      ),
      clipBehavior: fieldValues.clipBehavior.isSet ? fieldValues.clipBehavior.value! : Clip.none,
      constraints: BoxConstraints(
        minWidth: fieldValues.minWidth.isSet ? fieldValues.minWidth.value! : 0.0,
        maxWidth: fieldValues.maxWidth.isSet ? fieldValues.maxWidth.value! : double.infinity,
        minHeight: fieldValues.minHeight.isSet ? fieldValues.minHeight.value! : 0.0,
        maxHeight: fieldValues.maxHeight.isSet ? fieldValues.maxHeight.value! : double.infinity,
      ),
      transformAlignment: fieldValues.transformAlignment.isSet ? fieldValues.transformAlignment.value : null,
      child: Container(),
    );
  }

  // TODO: Use field values instead
  @override
  String get code => '''
    Container(
      height: ${getValueOf('height')},
      width: ${getValueOf('width')},
      alignment: ${getValueOf('alignment')},
      margin: ${getValueOf('margin')},
      padding: ${getValueOf('padding')},
      transform: ${getValueOf('transform')},
      decoration: BoxDecoration(
        color: ${getValueOf('color')},
        borderRadius: ${getValueOf('borderRadius')},
        border: ${getValueOf('border')},
      ),
      foregroundDecoration: BoxDecoration(
        color: ${getValueOf('foregroundColor')},
      ),
      clipBehavior: ${getValueOf('clipBehavior') ?? Clip.none},
      constraints: BoxConstraints(
        minWidth: ${getValueOf('minWidth') ?? 0.0},
        maxWidth: ${getValueOf('maxWidth') ?? double.infinity},
        minHeight: ${getValueOf('minHeight') ?? 0.0},
        maxHeight: ${getValueOf('maxHeight') ?? double.infinity},
      ),
      transformAlignment: ${getValueOf('transformAlignment')},
      child: Container(),
    );
  ''';

  @override
  ContainerProperties get fieldValues => (
        height: getValueOf('height'),
        width: getValueOf('width'),
        alignment: getValueOf('alignment'),
        margin: getValueOf('margin'),
        padding: getValueOf('padding'),
        color: getValueOf('color'),
        borderRadius: getValueOf('borderRadius'),
        border: getValueOf('border'),
        foregroundColor: getValueOf('foregroundColor'),
        transform: getValueOf('transform'),
        clipBehavior: getValueOf('clipBehavior'),
        minHeight: getValueOf('minHeight'),
        maxHeight: getValueOf('maxHeight'),
        minWidth: getValueOf('minWidth'),
        maxWidth: getValueOf('maxWidth'),
        transformAlignment: getValueOf('transformAlignment'),
      );

  @override
  void registerFields() {
    heightField();
    widthField();
    alignmentField(id: "alignment", title: "Alignment");
    edgeInsetsField(id: "margin", title: "Margin");
    edgeInsetsField(id: "padding", title: "Padding");
    colorField(id: "color", title: "Color");
    borderRadiusField(id: "BorderRadius", title: "BorderRadius");
    borderField(id: "border", title: "Border");
    colorField(id: "foregroundColor", title: "Foreground Color");
    matrix4Field(id: "transform", title: "Transform");
    clipField(id: "clipBehavior", title: "Clip Behavior");
    heightField(id: "minHeight", title: "Minimum Height");
    heightField(id: "maxHeight", title: "Maximum Height");
    widthField(id: "minWidth", title: "Minimum Width");
    widthField(id: "maxWidth", title: "Maximum Width");
    alignmentField(id: "transformAlignment", title: "Transform Alignment");
  }
}

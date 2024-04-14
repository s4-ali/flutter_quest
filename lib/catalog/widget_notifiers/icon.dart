import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/icon_data_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';
import 'package:flutter_quest/property_fields/text_direction_field.dart';

typedef IconProperties = ({
  ValueHolder<IconData?> icon,
  ValueHolder<double?> size,
  ValueHolder<double?> fill,
  ValueHolder<double?> weight,
  ValueHolder<double?> grade,
  ValueHolder<double?> opticalSize,
  ValueHolder<Color?> color,
  ValueHolder<Color?> shadowColor,
  ValueHolder<double?> scaleX,
  ValueHolder<double?> scaleY,
  ValueHolder<double?> shadowBlurRadius,
  ValueHolder<double?> shadowSpreadRadius,
  ValueHolder<BlurStyle?> blurStyle,
  ValueHolder<String?> semanticLabel,
  ValueHolder<TextDirection?> textDirection,
});

class IconPropertiesNotifier extends PropertiesNotifier<IconProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return Icon(
      fieldValues.icon.isSet? fieldValues.icon.value : null,
      size: fieldValues.size.isSet? fieldValues.size.value : null,
      fill: fieldValues.fill.isSet? fieldValues.fill.value : null,
      weight: fieldValues.weight.isSet? fieldValues.weight.value : null,
      grade: fieldValues.grade.isSet? fieldValues.grade.value : null,
      opticalSize: fieldValues.opticalSize.isSet? fieldValues.opticalSize.value : null,
      color: fieldValues.color.isSet? fieldValues.color.value : null,
      shadows: [
        BoxShadow(
          color: fieldValues.shadowColor.isSet? fieldValues.shadowColor.value! : const Color(0xFF000000),
          offset: Offset(fieldValues.scaleX.isSet? fieldValues.scaleX.value! : 0.0, fieldValues.scaleY.isSet? fieldValues.scaleY.value! : 0.0),
          blurRadius: fieldValues.shadowBlurRadius.isSet? fieldValues.shadowBlurRadius.value! : 0.0,
          spreadRadius: fieldValues.shadowSpreadRadius.isSet? fieldValues.shadowSpreadRadius.value! : 0.0,
          blurStyle:fieldValues.blurStyle.isSet? fieldValues.blurStyle.value! : BlurStyle.normal,
        )
      ],
      semanticLabel: fieldValues.semanticLabel.isSet? fieldValues.semanticLabel.value : null,
      textDirection: fieldValues.textDirection.isSet? fieldValues.textDirection.value : null,
    );
  }

  @override
  IconProperties get fieldValues => (
        icon: getValueOf('icon'),
        size: getValueOf('size'),
        fill: getValueOf('fill'),
        weight: getValueOf('weight'),
        grade: getValueOf('grade'),
        opticalSize: getValueOf('opticalSize'),
        color: getValueOf('color'),
        shadowColor: getValueOf('shadowColor'),
        scaleX: getValueOf('scaleX'),
        scaleY: getValueOf('scaleY'),
        shadowBlurRadius: getValueOf('shadowBlurRadius'),
        shadowSpreadRadius: getValueOf('shadowSpreadRadius'),
        blurStyle: getValueOf('blurStyle'),
        semanticLabel: getValueOf('semanticLabel'),
        textDirection: getValueOf('textDirection'),
      );

  @override
  void registerFields() {
    iconDataField(id: "icon", title: "Icon");
    doubleField(id: "size", title: "Size");
    doubleField(id: "fill", title: "Fill");
    doubleField(id: "weight", title: "Weight");
    doubleField(id: "grade", title: "Grade");
    doubleField(id: "opticalSize", title: "Optical Size");
    colorField(id: "color", title: "Color");
    colorField(id: "shadowColor", title: "Shadow Color");
    doubleField(id: "scaleX", title: "ScaleX");
    doubleField(id: "scaleY", title: "ScaleY");
    doubleField(id: "shadowBlurRadius", title: "Shadow Blur Radius");
    doubleField(id: "shadowSpreadRadius", title: "Shadow Spread Radius");
    listField<BlurStyle>(
      id: "blurStyle",
      title: "Blur Style",
      values: BlurStyle.values,
    );
    stringField(id: "semanticLabel", title: "Semantic Label");
    textDirectionField(id: "textDirection", title: "Text Direction");
  }

  @override
  String get code => '''
Icon(
      ${fieldValues.icon},
      size: ${fieldValues.size},
      fill: ${fieldValues.fill},
      weight: ${fieldValues.weight},
      grade: ${fieldValues.grade},
      opticalSize: ${fieldValues.opticalSize},
      color: ${fieldValues.color},
      shadows: [
        BoxShadow(
          color: ${fieldValues.shadowColor} ?? const Color(0xFF000000),
          offset: Offset(${fieldValues.scaleX} ?? 0.0, ${fieldValues.scaleY} ?? 0.0),
          blurRadius: ${fieldValues.shadowBlurRadius} ?? 0.0,
          spreadRadius: ${fieldValues.shadowSpreadRadius} ?? 0.0,
          blurStyle: ${fieldValues.blurStyle} ?? BlurStyle.normal,
        )
      ],
      semanticLabel: ${fieldValues.semanticLabel},
      textDirection: ${fieldValues.textDirection},
    );
''';
}

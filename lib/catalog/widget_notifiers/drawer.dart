import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/shape_border_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';

typedef DrawerProperties = ({
  ValueHolder<double?> width,
  ValueHolder<Color?> bgColor,
  ValueHolder<double?> elevation,
  ValueHolder<Color?> shadowColor,
  ValueHolder<Color?> surfaceTintColor,
  ValueHolder<ShapeBorder?> shape,
  ValueHolder<String?> semanticLabel,
  ValueHolder<Clip?> clipBehavior,
});

class DrawerPropertiesNotifier extends PropertiesNotifier<DrawerProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return Drawer(
      width: fieldValues.width.isSet? fieldValues.width.value : null,
      backgroundColor: fieldValues.bgColor.isSet? fieldValues.bgColor.value : null,
      elevation: fieldValues.elevation.isSet? fieldValues.elevation.value : null,
      shadowColor: fieldValues.shadowColor.isSet? fieldValues.shadowColor.value : null,
      surfaceTintColor: fieldValues.surfaceTintColor.isSet? fieldValues.surfaceTintColor.value : null,
      shape: fieldValues.shape.isSet? fieldValues.shape.value : null,
      semanticLabel: fieldValues.semanticLabel.isSet? fieldValues.semanticLabel.value : null,
      clipBehavior: fieldValues.clipBehavior.isSet? fieldValues.clipBehavior.value : null,
      child: ListView(),
    );
  }

  @override
  String get code => '''
   Drawer(
      width: ${fieldValues.width},
      backgroundColor: ${fieldValues.bgColor},
      elevation: ${fieldValues.elevation},
      shadowColor: ${fieldValues.shadowColor},
      surfaceTintColor: ${fieldValues.surfaceTintColor},
      shape: ${fieldValues.shape},
      semanticLabel: ${fieldValues.semanticLabel},
      clipBehavior: ${fieldValues.clipBehavior},
      child: ListView(),
    );
  ''';

  @override
  get fieldValues => (
        width: getValueOf('width'),
        bgColor: getValueOf('bgColor'),
        elevation: getValueOf('elevation'),
        shadowColor: getValueOf('shadowColor'),
        surfaceTintColor: getValueOf('surfaceTintColor'),
        shape: getValueOf('shape'),
        semanticLabel: getValueOf('semanticLabel'),
        clipBehavior: getValueOf('clipBehavior'),
      );

  @override
  void registerFields() {
    widthField();
    colorField(id: "bgColor", title: "Background Color");
    doubleField(id: "elevation", title: "Elevation");
    colorField(id: "shadowColor", title: "Shadow Color");
    colorField(id: "surfaceTintColor", title: "Surface Tint Color");
    shapeBorderField(id: "shape", title: "Shape");
    stringField(id: "semanticLabel", title: "Semantic Label");
    clipField(id: "clipBehavior", title: "Clip Behavior");
  }
}

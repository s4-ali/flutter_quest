import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/shape_border_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';

typedef DrawerProperties = ({
double? width,
Color? bgColor,
double? elevation,
Color? shadowColor,
Color? surfaceTintColor,
ShapeBorder? shape,
String? semanticLabel,
Clip? clipBehavior,
});

class DrawerPropertiesNotifier extends PropertiesNotifier {
  @override
  Widget buildPreview(BuildContext context) {
    return Drawer(
      width: fieldValues.width,
      backgroundColor: fieldValues.bgColor,
      elevation: fieldValues.elevation,
      shadowColor: fieldValues.shadowColor,
      surfaceTintColor: fieldValues.surfaceTintColor,
      shape: fieldValues.shape,
      semanticLabel: fieldValues.semanticLabel,
      clipBehavior: fieldValues.clipBehavior,
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

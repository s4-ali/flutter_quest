import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/edge_insets_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/shape_border_field.dart';

typedef CardProperties = ({
  ValueHolder<double?> elevation,
  ValueHolder<Color?> color,
  ValueHolder<Color?> shadowColor,
  ValueHolder<Color?> surfaceTintColor,
  ValueHolder<ShapeBorder?> shape,
  ValueHolder<bool?> borderForeground,
  ValueHolder<EdgeInsets?> margin,
  ValueHolder<Clip?> clipBehavior,
  ValueHolder<bool?> semanticContainer,
});

class CardPropertiesNotifier extends PropertiesNotifier<CardProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    // TODO: User fieldValues instead
    return Card(
      color: fieldValues.color.isSet ? fieldValues.color.value : null,
      shadowColor: fieldValues.shadowColor.isSet ? fieldValues.shadowColor.value : null,
      surfaceTintColor: fieldValues.surfaceTintColor.isSet ? fieldValues.surfaceTintColor.value : null,
      elevation: fieldValues.elevation.isSet ? fieldValues.elevation.value : null,
      shape: fieldValues.shape.isSet ? fieldValues.shape.value : null,
      borderOnForeground: fieldValues.borderForeground.isSet ? fieldValues.borderForeground.value! : true,
      margin: fieldValues.margin.isSet ? fieldValues.margin.value : null,
      clipBehavior: fieldValues.clipBehavior.isSet ? fieldValues.clipBehavior.value : null,
      semanticContainer: fieldValues.semanticContainer.isSet ? fieldValues.semanticContainer.value! : true,
      child: const Center(child: Text("Card")),
    );
  }

  @override
  String get code => '''
    Card(
      color: ${getValueOf('color')},
      shadowColor: ${getValueOf('shadowColor')},
      surfaceTintColor: ${getValueOf('surfaceTintColor')},
      elevation: ${getValueOf('elevation')},
      shape: ${getValueOf('shape')},
      borderOnForeground: ${getValueOf('borderForeground') ?? true},
      margin: ${getValueOf('margin')},
      clipBehavior: ${getValueOf('clipBehavior')},
      semanticContainer: ${getValueOf('semanticContainer') ?? true},
      child: const Center(child: Text("Card")),
    );
  ''';

  @override
  CardProperties get fieldValues => (
        elevation: getValueOf('elevation'),
        color: getValueOf('color'),
        shadowColor: getValueOf('shadowColor'),
        surfaceTintColor: getValueOf('surfaceTintColor'),
        shape: getValueOf('shape'),
        borderForeground: getValueOf('borderForeground'),
        margin: getValueOf('margin'),
        clipBehavior: getValueOf('clipBehavior'),
        semanticContainer: getValueOf('semanticContainer'),
      );

  @override
  void registerFields() {
    doubleField(id: "elevation", title: "Elevation");
    colorField(id: "color", title: "Color");
    colorField(id: "shadowColor", title: "Shadow Color");
    colorField(id: "surfaceTintColor", title: "Surface Tint Color");
    shapeBorderField(id: "shape", title: "Shape");
    booleanField(id: "borderForeground", title: "Border on Foreground");
    edgeInsetsField(id: "margin", title: "Margin");
    clipField(id: "clipBehavior", title: "Clip Behavior");
    booleanField(id: "semanticContainer", title: "Semantic Container");
  }
}

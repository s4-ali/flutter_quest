import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/shape_border_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';

typedef FloatingActionButtonProperties = ({
  ValueHolder<String?> tooltip,
  ValueHolder<Color?> foregroundColor,
  ValueHolder<Color?> backgroundColor,
  ValueHolder<Color?> focusColor,
  ValueHolder<Color?> hoverColor,
  ValueHolder<Color?> splashColor,
  ValueHolder<double?> elevation,
  ValueHolder<double?> focusElevation,
  ValueHolder<double?> hoverElevation,
  ValueHolder<double?> highlightElevation,
  ValueHolder<double?> disabledElevation,
  ValueHolder<MouseCursor?> mouseCursor,
  ValueHolder<bool?> mini,
  ValueHolder<ShapeBorder?> shape,
  ValueHolder<Clip?> clipBehavior,
  ValueHolder<bool?> autofocus,
  ValueHolder<MaterialTapTargetSize?> materialTapTargetSize,
  ValueHolder<bool?> isExtended,
  ValueHolder<bool?> enableFeedback,
  ValueHolder<String?> childText,
});

class FloatingActionButtonPropertiesNotifier
    extends PropertiesNotifier<FloatingActionButtonProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return FloatingActionButton(
      tooltip: fieldValues.tooltip.isSet? fieldValues.tooltip.value : null,
      foregroundColor: fieldValues.foregroundColor.isSet? fieldValues.foregroundColor.value : null,
      backgroundColor: fieldValues.backgroundColor.isSet? fieldValues.backgroundColor.value : null,
      focusColor: fieldValues.focusColor.isSet? fieldValues.focusColor.value : null,
      hoverColor: fieldValues.hoverColor.isSet? fieldValues.hoverColor.value : null,
      splashColor: fieldValues.splashColor.isSet? fieldValues.splashColor.value : null,
      heroTag: () {},
      elevation: fieldValues.elevation.isSet? fieldValues.elevation.value : null,
      focusElevation: fieldValues.focusElevation.isSet? fieldValues.focusElevation.value : null,
      hoverElevation: fieldValues.hoverElevation.isSet? fieldValues.hoverElevation.value : null,
      highlightElevation: fieldValues.highlightElevation.isSet? fieldValues.highlightElevation.value : null,
      disabledElevation: fieldValues.disabledElevation.isSet? fieldValues.disabledElevation.value : null,
      onPressed: () {},
      mouseCursor: fieldValues.mouseCursor.isSet? fieldValues.mouseCursor.value : null,
      mini: fieldValues.mini.isSet? fieldValues.mini.value! : false,
      shape: fieldValues.shape.isSet? fieldValues.shape.value : null,
      clipBehavior: fieldValues.clipBehavior.isSet? fieldValues.clipBehavior.value! : Clip.none,
      focusNode: FocusNode(),
      autofocus: fieldValues.autofocus.isSet? fieldValues.autofocus.value! : false,
      materialTapTargetSize: fieldValues.materialTapTargetSize.isSet? fieldValues.materialTapTargetSize.value : null,
      isExtended: fieldValues.isExtended.isSet? fieldValues.isExtended.value! : false,
      enableFeedback: fieldValues.enableFeedback.isSet? fieldValues.enableFeedback.value : null,
      child: Text(fieldValues.childText.isSet? fieldValues.childText.value! :""),
    );
  }

  @override
  String get code => '''
FloatingActionButton(
  tooltip: "${fieldValues.tooltip}",
  foregroundColor: ${fieldValues.foregroundColor},
  backgroundColor: ${fieldValues.backgroundColor},
  focusColor: ${fieldValues.focusColor},
  hoverColor: ${fieldValues.hoverColor},
  splashColor: ${fieldValues.splashColor},
  heroTag: () {},
  elevation: ${fieldValues.elevation},
  focusElevation: ${fieldValues.focusElevation},
  hoverElevation: ${fieldValues.hoverElevation},
  highlightElevation: ${fieldValues.highlightElevation},
  disabledElevation: ${fieldValues.disabledElevation},
  onPressed: () {},
  mouseCursor: ${fieldValues.mouseCursor},
  mini: ${fieldValues.mini} ?? false,
  shape: ${fieldValues.shape},
  clipBehavior: ${fieldValues.clipBehavior} ?? Clip.none,
  focusNode: FocusNode(),
  autofocus: ${fieldValues.autofocus} ?? false,
  materialTapTargetSize: ${fieldValues.materialTapTargetSize},
  isExtended: ${fieldValues.isExtended} ?? false,
  enableFeedback: ${fieldValues.enableFeedback},
  child: Text("${fieldValues.childText}" ?? ""),
)
''';

  @override
  FloatingActionButtonProperties get fieldValues => (
        tooltip: getValueOf('tooltip'),
        foregroundColor: getValueOf('foregroundColor'),
        backgroundColor: getValueOf('backgroundColor'),
        focusColor: getValueOf('focusColor'),
        hoverColor: getValueOf('hoverColor'),
        splashColor: getValueOf('splashColor'),
        elevation: getValueOf('elevation'),
        focusElevation: getValueOf('focusElevation'),
        hoverElevation: getValueOf('hoverElevation'),
        highlightElevation: getValueOf('highlightElevation'),
        disabledElevation: getValueOf('disabledElevation'),
        mouseCursor: getValueOf('mouseCursor'),
        mini: getValueOf('mini'),
        shape: getValueOf('shape'),
        clipBehavior: getValueOf('clipBehavior'),
        autofocus: getValueOf('autofocus'),
        materialTapTargetSize: getValueOf('materialTapTargetSize'),
        isExtended: getValueOf('isExtended'),
        enableFeedback: getValueOf('enableFeedback'),
        childText: getValueOf('childText'),
      );

  @override
  void registerFields() {
    stringField(id: "tooltip", title: "Tooltip");
    colorField(id: "foregroundColor", title: "Foreground Color");
    colorField(id: "backgroundColor", title: "Background Color");
    colorField(id: "focusColor", title: "Focus Color");
    colorField(id: "hoverColor", title: "Hover Color");
    colorField(id: "splashColor", title: "Splash Color");
    doubleField(id: "elevation", title: "Elevation");
    doubleField(id: "focusElevation", title: "Focus Elevation");
    doubleField(id: "hoverElevation", title: "Hover Elevation");
    doubleField(id: "highlightElevation", title: "Highlight Elevation");
    doubleField(id: "disabledElevation", title: "Disabled Elevation");
    listField<MouseCursor>(
        id: "mouseCursor",
        title: "MouseCursor",
        values: [MouseCursor.defer, MouseCursor.uncontrolled]);
    booleanField(id: "mini", title: "Mini");
    shapeBorderField(id: "shape", title: "Shape");
    clipField(id: "clipBehavior", title: "Clip Behavior");
    booleanField(id: "autofocus", title: "Auto Focus");
    listField<MaterialTapTargetSize>(
        id: "materialTapTargetSize",
        title: "Material Tap Target Size",
        values: [
          MaterialTapTargetSize.padded,
          MaterialTapTargetSize.shrinkWrap
        ]);
    booleanField(id: "isExtended", title: "Is Extended");
    booleanField(id: "enableFeedback", title: "Enable Feedback");
    stringField(id: "childText", title: "Child Text");
  }
}

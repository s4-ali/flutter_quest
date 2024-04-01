import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/axis_field.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/border_radius_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/text_style_field.dart';
import 'package:flutter_quest/property_fields/vertical_direction_field.dart';

typedef ToggleButtonsProperties = ({
  MouseCursor? mouseCursor,
  MaterialTapTargetSize? tapTargetSize,
  TextStyle? textStyle,
  double? maxHeight,
  double? minHeight,
  double? maxWidth,
  double? minWidth,
  Color? color,
  Color? selectedColor,
  Color? disabledColor,
  Color? fillColor,
  Color? focusColor,
  Color? highlightColor,
  Color? hoverColor,
  Color? splashColor,
  List<FocusNode>? focusNodes,
  bool? renderBorder,
  Color? selectedBorderColor,
  Color? disabledBorderColor,
  BorderRadius? borderRadius,
  double? borderWidth,
  Color? borderColor,
  Axis? direction,
  VerticalDirection? verticalDirection,
  List<Widget>? children,
});

class ToggleButtonsPropertiesNotifier
    extends PropertiesNotifier<ToggleButtonsProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return ToggleButtons(
      isSelected: const [],
      onPressed: (v) {},
      mouseCursor: fieldValues.mouseCursor,
      tapTargetSize: fieldValues.tapTargetSize,
      textStyle: fieldValues.textStyle,
      constraints: BoxConstraints(
        maxHeight: fieldValues.maxHeight ?? double.infinity,
        minHeight: fieldValues.minHeight ?? 0.0,
        maxWidth: fieldValues.maxWidth ?? double.infinity,
        minWidth: fieldValues.minWidth ?? 0.0,
      ),
      color: fieldValues.color,
      selectedColor: fieldValues.selectedColor,
      disabledColor: fieldValues.disabledColor,
      fillColor: fieldValues.fillColor,
      focusColor: fieldValues.focusColor,
      highlightColor: fieldValues.highlightColor,
      hoverColor: fieldValues.hoverColor,
      splashColor: fieldValues.splashColor,
      focusNodes: fieldValues.focusNodes ?? const [],
      renderBorder: fieldValues.renderBorder ?? true,
      selectedBorderColor: fieldValues.selectedBorderColor,
      disabledBorderColor: fieldValues.disabledBorderColor,
      borderRadius: fieldValues.borderRadius,
      borderWidth: fieldValues.borderWidth,
      borderColor: fieldValues.borderColor,
      direction: fieldValues.direction ?? Axis.horizontal,
      verticalDirection:
          fieldValues.verticalDirection ?? VerticalDirection.down,
      children: fieldValues.children ?? const [],
    );
  }

  @override
  String get code => '''
    ToggleButtons(
      isSelected: [],
      onPressed: (v) {},
      mouseCursor: ${fieldValues.mouseCursor},
      tapTargetSize: ${fieldValues.tapTargetSize},
      textStyle: ${fieldValues.textStyle},
      constraints: BoxConstraints(
        maxHeight: ${fieldValues.maxHeight},
        minHeight: ${fieldValues.minHeight},
        maxWidth: ${fieldValues.maxWidth},
        minWidth: ${fieldValues.minWidth},
      ),
      color: ${fieldValues.color},
      selectedColor: ${fieldValues.selectedColor},
      disabledColor: ${fieldValues.disabledColor},
      fillColor: ${fieldValues.fillColor},
      focusColor: ${fieldValues.focusColor},
      highlightColor: ${fieldValues.highlightColor},
      hoverColor: ${fieldValues.hoverColor},
      splashColor: ${fieldValues.splashColor},
      focusNodes: ${fieldValues.focusNodes},
      renderBorder: ${fieldValues.renderBorder},
      selectedBorderColor: ${fieldValues.selectedBorderColor},
      disabledBorderColor: ${fieldValues.disabledBorderColor},
      borderRadius: ${fieldValues.borderRadius},
      borderWidth: ${fieldValues.borderWidth},
      borderColor: ${fieldValues.borderColor},
      direction: ${fieldValues.direction},
      verticalDirection: ${fieldValues.verticalDirection},
      children: ${fieldValues.children},
    );
  ''';

  @override
  ToggleButtonsProperties get fieldValues => (
        mouseCursor: getValueOf('mouseCursor'),
        tapTargetSize: getValueOf('tapTargetSize'),
        textStyle: getValueOf('textStyle'),
        maxHeight: getValueOf('maxHeight'),
        minHeight: getValueOf('minHeight'),
        maxWidth: getValueOf('maxWidth'),
        minWidth: getValueOf('minWidth'),
        color: getValueOf('color'),
        selectedColor: getValueOf('selectedColor'),
        disabledColor: getValueOf('disabledColor'),
        fillColor: getValueOf('fillColor'),
        focusColor: getValueOf('focusColor'),
        highlightColor: getValueOf('highlightColor'),
        hoverColor: getValueOf('hoverColor'),
        splashColor: getValueOf('splashColor'),
        focusNodes: getValueOf('focusNodes'),
        renderBorder: getValueOf('renderBorder'),
        selectedBorderColor: getValueOf('selectedBorderColor'),
        disabledBorderColor: getValueOf('disabledBorderColor'),
        borderRadius: getValueOf('borderRadius'),
        borderWidth: getValueOf('borderWidth'),
        borderColor: getValueOf('borderColor'),
        direction: getValueOf('direction'),
        verticalDirection: getValueOf('verticalDirection'),
        children: getValueOf('children'),
      );

  @override
  void registerFields() {
    listField<MouseCursor>(
      id: "mouseCursor",
      title: "MouseCursor",
      values: [MouseCursor.defer, MouseCursor.uncontrolled],
    );
    listField<MaterialTapTargetSize>(
      id: "tapTargetSize",
      title: "TapTargetSize",
      values: MaterialTapTargetSize.values,
    );
    textStyleField(id: "textStyle", title: "TextStyle");
    doubleField(id: "maxHeight", title: "Maximum Height");
    doubleField(id: "minHeight", title: "Minimum Height");
    doubleField(id: "maxWidth", title: "Maximum Width");
    doubleField(id: "minWidth", title: "Minimum Width");
    colorField(id: "color", title: "Color");
    colorField(id: "selectedColor", title: "Selected Color");
    colorField(id: "disabledColor", title: "Disabled Color");
    colorField(id: "fillColor", title: "Fill Color");
    colorField(id: "focusColor", title: "Focus Color");
    colorField(id: "highlightColor", title: "Highlight Color");
    colorField(id: "hoverColor", title: "Hover Color");
    colorField(id: "splashColor", title: "Splash Color");
    booleanField(id: "renderBorder", title: "Render Border");
    colorField(id: "selectedBorderColor", title: "Selected Border Color");
    colorField(id: "disabledBorderColor", title: "Disabled Border Color");
    borderRadiusField(id: "borderRadius", title: "Border Radius");
    doubleField(id: "borderWidth", title: "Border Width");
    colorField(id: "borderColor", title: "Border Color");
    axisField(id: "direction", title: "Direction");
    verticalDirectionField(
        id: "verticalDirection", title: "Vertical Direction");
  }
}

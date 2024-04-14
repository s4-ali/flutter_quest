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
  ValueHolder<MouseCursor?> mouseCursor,
  ValueHolder<MaterialTapTargetSize?> tapTargetSize,
  ValueHolder<TextStyle?> textStyle,
  ValueHolder<double?> maxHeight,
  ValueHolder<double?> minHeight,
  ValueHolder<double?> maxWidth,
  ValueHolder<double?> minWidth,
  ValueHolder<Color?> color,
  ValueHolder<Color?> selectedColor,
  ValueHolder<Color?> disabledColor,
  ValueHolder<Color?> fillColor,
  ValueHolder<Color?> focusColor,
  ValueHolder<Color?> highlightColor,
  ValueHolder<Color?> hoverColor,
  ValueHolder<Color?> splashColor,
  ValueHolder<List<FocusNode>?> focusNodes,
  ValueHolder<bool?> renderBorder,
  ValueHolder<Color?> selectedBorderColor,
  ValueHolder<Color?> disabledBorderColor,
  ValueHolder<BorderRadius?> borderRadius,
  ValueHolder<double?> borderWidth,
  ValueHolder<Color?> borderColor,
  ValueHolder<Axis?> direction,
  ValueHolder<VerticalDirection?> verticalDirection,
  ValueHolder<List<Widget>?> children,
});

class ToggleButtonsPropertiesNotifier
    extends PropertiesNotifier<ToggleButtonsProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return ToggleButtons(
      isSelected: const [],
      onPressed: (v) {},
      mouseCursor: fieldValues.mouseCursor.isSet? fieldValues.mouseCursor.value : null,
      tapTargetSize: fieldValues.tapTargetSize.isSet? fieldValues.tapTargetSize.value : null,
      textStyle: fieldValues.textStyle.isSet? fieldValues.textStyle.value : null,
      constraints: BoxConstraints(
        maxHeight: fieldValues.maxHeight.isSet? fieldValues.maxHeight.value! : double.infinity,
        minHeight: fieldValues.minHeight.isSet? fieldValues.minHeight.value! : 0.0,
        maxWidth: fieldValues.maxHeight.isSet? fieldValues.maxHeight.value! : double.infinity,
        minWidth: fieldValues.minWidth.isSet? fieldValues.minWidth.value! : 0.0,
      ),
      color: fieldValues.color.isSet? fieldValues.color.value : null,
      selectedColor: fieldValues.selectedColor.isSet? fieldValues.selectedColor.value : null,
      disabledColor: fieldValues.disabledColor.isSet? fieldValues.disabledColor.value : null,
      fillColor: fieldValues.fillColor.isSet? fieldValues.fillColor.value : null,
      focusColor: fieldValues.focusColor.isSet? fieldValues.focusColor.value : null,
      highlightColor: fieldValues.highlightColor.isSet? fieldValues.highlightColor.value : null,
      hoverColor: fieldValues.hoverColor.isSet? fieldValues.hoverColor.value : null,
      splashColor: fieldValues.splashColor.isSet? fieldValues.splashColor.value : null,
      focusNodes: fieldValues.focusNodes.isSet? fieldValues.focusNodes.value : null,
      renderBorder: fieldValues.renderBorder.isSet? fieldValues.renderBorder.value! : true,
      selectedBorderColor: fieldValues.selectedBorderColor.isSet? fieldValues.selectedBorderColor.value : null,
      disabledBorderColor: fieldValues.disabledBorderColor.isSet? fieldValues.disabledBorderColor.value : null,
      borderRadius: fieldValues.borderRadius.isSet? fieldValues.borderRadius.value : null,
      borderWidth: fieldValues.borderWidth.isSet? fieldValues.borderWidth.value : null,
      borderColor: fieldValues.borderColor.isSet? fieldValues.borderColor.value : null,
      direction: fieldValues.direction.isSet? fieldValues.direction.value! : Axis.horizontal,
      verticalDirection: fieldValues.verticalDirection.isSet? fieldValues.verticalDirection.value! : VerticalDirection.down,
      children: fieldValues.children.isSet? fieldValues.children.value! :  const [],
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

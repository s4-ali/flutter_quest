import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/axis_field.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/border_radius_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/text_style_field.dart';
import 'package:flutter_quest/property_fields/vertical_direction_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class ToggleButtonPropertyExplorer extends StatefulWidget {
  const ToggleButtonPropertyExplorer({
    super.key,
  });

  @override
  State<ToggleButtonPropertyExplorer> createState() =>
      _ToggleButtonPropertyExplorerState();
}

class _ToggleButtonPropertyExplorerState
    extends State<ToggleButtonPropertyExplorer> {
  @override
  Widget build(BuildContext context) {
    List<bool> is_Selected = [false, false, false];

    return PropertyExplorerBuilder(
      widgetName: "Toggle Button",
      builder: (provider) {
        final mouseCursor = provider.listField<MouseCursor>(
            id: "mouseCursor",
            title: "MouseCursor",
            values: [MouseCursor.defer, MouseCursor.uncontrolled]);
        final tapTargetSize = provider.listField(id: "tapTargetSize", title: "tapTargetSize", values: MaterialTapTargetSize.values);
        final textStyle = provider.textStyleField(id: "textStyle", title: "textStyle");

        final maxHeight = provider.doubleField(id: "maxHeight", title: "Maximum Height");
        final minHeight = provider.doubleField(id: "minHeight", title: "minimum Height");
        final maxWidth = provider.doubleField(id: "maxWidth", title: "Maximum Width");
        final minWidth = provider.doubleField(id: "minWidth", title: "Minimum Width");

        final color = provider.colorField(id: "color", title: "color");
        final selectedColor = provider.colorField(id: "selectedColor", title: "selectedColor");
        final disabledColor = provider.colorField(id: "disabledColor", title: "disabledColor");
        final fillColor = provider.colorField(id: "fillColor", title: "fillColor");
        final focusColor = provider.colorField(id: "focusColor", title: "focusColor");
        final highlightColor = provider.colorField(id: "highlightColor", title: "highlightColor");
        final hoverColor = provider.colorField(id: "hoverColor", title: "hoverColor");
        final splashColor = provider.colorField(id: "splashColor", title: "splashColor");
        final renderBorder = provider.booleanField(id: "renderBorder", title: "renderBorder");
        final selectedBorderColor = provider.colorField(id: "selectedBorderColor", title: "selectedBorderColor");
        final disabledBorderColor = provider.colorField(id: "disabledBorderColor", title: "disabledBorderColor");
        final borderRadius = provider.borderRadiusField(id: "borderRadius", title: "borderRadius");
        final borderWidth = provider.doubleField(id: "borderWidth", title: "borderWidth");
        final borderColor = provider.colorField(id: "borderColor", title: "borderColor");
        final direction = provider.axisField(id: "direction", title: "direction");
        final verticalDirection = provider.verticalDirectionField(id: "verticalDirection", title: "verticalDirection");



        return ToggleButtons(
          isSelected: is_Selected,
          onPressed: (v) {},
          mouseCursor: mouseCursor,
          tapTargetSize: tapTargetSize,
          textStyle: textStyle,
          constraints: BoxConstraints(
            maxHeight: maxHeight?? double.infinity,
            minHeight: minHeight?? 0.0,
            maxWidth: maxWidth?? double.infinity,
            minWidth: minWidth?? 0.0,
          ),
          color: color,
          selectedColor: selectedColor,
          disabledColor: disabledColor,
          fillColor: fillColor,
          focusColor: focusColor,
          highlightColor: highlightColor,
          hoverColor: hoverColor,
          splashColor: splashColor,
          focusNodes: const [],
          renderBorder: renderBorder?? true,
          selectedBorderColor: selectedBorderColor,
          disabledBorderColor: disabledBorderColor,
          borderRadius: borderRadius,
          borderWidth: borderWidth,
          borderColor: borderColor,
          direction: direction?? Axis.horizontal,
          verticalDirection: verticalDirection?? VerticalDirection.down,
          children: const [],
        );
      },
    );
  }
}

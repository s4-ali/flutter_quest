import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class CheckBoxPropertyExplorer extends StatelessWidget {
  const CheckBoxPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "CheckBox",
      builder: (provider) {
        final value = provider.booleanField(
          id: "value",
          title: "Value",
        );
        final triState = provider.booleanField(
              id: "triState",
              title: "TriState",
            );
        final mouseCursor = provider.listField<MouseCursor>(
          id: "mouseCursor",
          title: "MouseCursor",
          values: [MouseCursor.defer, MouseCursor.uncontrolled],
        );
        final activeColor = provider.colorField(
          id: "activeColor",
          title: "Active Color",
        );
        final fillColor = provider.colorField(
          id: "fillColor",
          title: "Fill Color",
        );
        final checkColor = provider.colorField(
          id: "checkColor",
          title: "Check Color",
        );
        final focusColor = provider.colorField(
          id: "focusColor",
          title: "Focus Color",
        );
        final hoverColor = provider.colorField(
          id: "hoverColor",
          title: "Hover Color",
        );
        final overLayColor = provider.colorField(
          id: "overLayColor",
          title: "Overlay Color",
        );
        final splashRadius =
            provider.doubleField(id: "splashRadius", title: "Splash Radius");
        final materialTapTargetSize = provider.listField<MaterialTapTargetSize>(
          id: "materialTapTargetSize",
          title: "Material Tap Target Size",
          values: MaterialTapTargetSize.values,
        );
        final visualDensityVertical = provider.doubleField(
                id: "visualDensityVertical",
                title: "Visual Density Vertical");
        final visualDensityHorizontal = provider.doubleField(
                id: "visualDensityHorizontal",
                title: "Visual Density Horizontal");

        final autoFocus =
            provider.booleanField(id: "autoFocus", title: "Auto Focus");
        final eccentricity =
            provider.doubleField(id: "eccentricity", title: "Eccentricity");
        final borderColor = provider.colorField(
          id: "borderColor",
          title: "Border Color",
        );
        final borderWidth =
            provider.doubleField(id: "borderWidth", title: "Border Width");
        final borderStyle = provider.listField<BorderStyle>(
            id: "borderStyle",
            title: "Border Style",
            values: BorderStyle.values);
        final strokeAlign =
            provider.doubleField(id: "strokeAlign", title: "Stroke Align");
        final isError = provider.booleanField(id: "isError", title: "isError");
        final semanticLabel =
            provider.stringField(id: "semanticLabel", title: "Semantic Label");

        return Checkbox(
          value: value,
          tristate: triState?? true,
          mouseCursor: mouseCursor,
          activeColor: activeColor,
          fillColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              return fillColor ?? Colors.transparent; // Default color
            },
          ),
          checkColor: checkColor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          overlayColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              return overLayColor ?? Colors.transparent; // Default color
            },
          ),
          splashRadius: splashRadius,
          materialTapTargetSize: materialTapTargetSize,
          visualDensity: VisualDensity(
            vertical: visualDensityVertical?? 0.0,
            horizontal: visualDensityHorizontal?? 0.0,
          ),
          focusNode: FocusNode(),
          autofocus: autoFocus ?? false,
          shape: CircleBorder(
            side: const BorderSide(),
            eccentricity: eccentricity?? 0.0,
          ),
          side: BorderSide(
            color: borderColor ?? const Color(0xFF000000),
            width: borderWidth?? 1.0,
            style: borderStyle ?? BorderStyle.solid,
            strokeAlign: strokeAlign?? 0.0,
          ),
          isError: isError ?? false,
          semanticLabel: semanticLabel,
          onChanged: (val) {},
        );
      },
    );
  }
}

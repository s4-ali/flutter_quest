import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';

typedef CheckboxProperties = ({
  ValueHolder<bool?> value,
  ValueHolder<bool?> triState,
  ValueHolder<MouseCursor?> mouseCursor,
  ValueHolder<Color?> activeColor,
  ValueHolder<Color?> fillColor,
  ValueHolder<Color?> checkColor,
  ValueHolder<Color?> focusColor,
  ValueHolder<Color?> hoverColor,
  ValueHolder<Color?> overLayColor,
  ValueHolder<double?> splashRadius,
  ValueHolder<MaterialTapTargetSize?> materialTapTargetSize,
  ValueHolder<double?> visualDensityVertical,
  ValueHolder<double?> visualDensityHorizontal,
  ValueHolder<bool?> autoFocus,
  ValueHolder<double?> eccentricity,
  ValueHolder<Color?> borderColor,
  ValueHolder<double?> borderWidth,
  ValueHolder<BorderStyle?> borderStyle,
  ValueHolder<double?> strokeAlign,
  ValueHolder<bool?> isError,
  ValueHolder<String?> semanticLabel,
});

class CheckboxPropertiesNotifier
    extends PropertiesNotifier<CheckboxProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return Checkbox(
      value: fieldValues.value.isSet ? fieldValues.value.value : null,
      tristate: fieldValues.triState.isSet ? fieldValues.triState.value! : true,
      mouseCursor: fieldValues.mouseCursor.isSet ? fieldValues.mouseCursor.value : null,
      activeColor: fieldValues.activeColor.isSet ? fieldValues.activeColor.value : null,
      fillColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          return fieldValues.fillColor.isSet ? fieldValues.fillColor.value! : Colors.transparent; // Default color
        },
      ),
      checkColor: fieldValues.checkColor.isSet ? fieldValues.checkColor.value : null,
      focusColor: fieldValues.focusColor.isSet ? fieldValues.focusColor.value : null,
      hoverColor: fieldValues.hoverColor.isSet ? fieldValues.hoverColor.value : null,
      overlayColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          return fieldValues.overLayColor.isSet ? fieldValues.overLayColor.value! : Colors.transparent; // Default color
        },
      ),
      splashRadius: fieldValues.splashRadius.isSet ? fieldValues.splashRadius.value : null,
      materialTapTargetSize: fieldValues.materialTapTargetSize.isSet ? fieldValues.materialTapTargetSize.value : null,
      visualDensity: VisualDensity(
        vertical: fieldValues.visualDensityVertical.isSet ? fieldValues.visualDensityVertical.value! : 0.0,
        horizontal: fieldValues.visualDensityHorizontal.isSet ? fieldValues.visualDensityHorizontal.value! : 0.0,
      ),
      focusNode: FocusNode(),
      autofocus: fieldValues.autoFocus.isSet ? fieldValues.autoFocus.value! : false,
      shape: CircleBorder(
        side: const BorderSide(),
        eccentricity: fieldValues.eccentricity.isSet ? fieldValues.eccentricity.value! : 0.0,
      ),
      side: BorderSide(
        color: fieldValues.borderColor.isSet ? fieldValues.borderColor.value! : const Color(0xFF000000),
        width: fieldValues.borderWidth.isSet ? fieldValues.borderWidth.value! : 1.0,
        style: fieldValues.borderStyle.isSet ? fieldValues.borderStyle.value! : BorderStyle.solid,
        strokeAlign: fieldValues.strokeAlign.isSet ? fieldValues.strokeAlign.value! : 0.0,
      ),
      isError: fieldValues.isError.isSet ? fieldValues.isError.value! : false,
      semanticLabel: fieldValues.semanticLabel.isSet ? fieldValues.semanticLabel.value : null,
      onChanged: (val) {},
    );
  }

  @override
  String get code {
    return """
        Checkbox(
      value: ${fieldValues.value},
      tristate: ${fieldValues.triState} ?? true,
      mouseCursor: ${fieldValues.mouseCursor},
      activeColor: ${fieldValues.activeColor},
      fillColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          return fieldValues.fillColor ?? Colors.transparent; // Default color
        },
      ),
      checkColor: ${fieldValues.checkColor},
      focusColor: ${fieldValues.focusColor},
      hoverColor: ${fieldValues.hoverColor},
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          return ${fieldValues.overLayColor} ??
              Colors.transparent; // Default color
        },
      ),
      splashRadius: ${fieldValues.splashRadius},
      materialTapTargetSize: ${fieldValues.materialTapTargetSize},
      visualDensity: VisualDensity(
        vertical: ${fieldValues.visualDensityVertical} ?? 0.0,
        horizontal: ${fieldValues.visualDensityHorizontal} ?? 0.0,
      ),
      focusNode: FocusNode(),
      autofocus: ${fieldValues.autoFocus} ?? false,
      shape: CircleBorder(
        side: const BorderSide(),
        eccentricity: ${fieldValues.eccentricity} ?? 0.0,
      ),
      side: BorderSide(
        color: ${fieldValues.borderColor} ?? const Color(0xFF000000),
        width: ${fieldValues.borderWidth} ?? 1.0,
        style: ${fieldValues.borderStyle} ?? BorderStyle.solid,
        strokeAlign: ${fieldValues.strokeAlign} ?? 0.0,
      ),
      isError: ${fieldValues.isError} ?? false,
      semanticLabel: ${fieldValues.semanticLabel},
      onChanged: (val) {},
    );

    """;
  }

  @override
  CheckboxProperties get fieldValues => (
        value: getValueOf("value"),
        triState: getValueOf("triState"),
        mouseCursor: getValueOf("mouseCursor"),
        activeColor: getValueOf("activeColor"),
        fillColor: getValueOf("fillColor"),
        checkColor: getValueOf("checkColor"),
        focusColor: getValueOf("focusColor"),
        hoverColor: getValueOf("hoverColor"),
        overLayColor: getValueOf("overLayColor"),
        splashRadius: getValueOf("splashRadius"),
        materialTapTargetSize: getValueOf("materialTapTargetSize"),
        visualDensityVertical: getValueOf("visualDensityVertical"),
        visualDensityHorizontal: getValueOf("visualDensityHorizontal"),
        autoFocus: getValueOf("autoFocus"),
        eccentricity: getValueOf("eccentricity"),
        borderColor: getValueOf("borderColor"),
        borderWidth: getValueOf("borderWidth"),
        borderStyle: getValueOf("borderStyle"),
        strokeAlign: getValueOf("strokeAlign"),
        isError: getValueOf("isError"),
        semanticLabel: getValueOf("semanticLabel"),
      );

  @override
  void registerFields() {
    booleanField(
      id: "value",
      title: "Value",
    );
    booleanField(
      id: "triState",
      title: "TriState",
    );
    listField<MouseCursor>(
      id: "mouseCursor",
      title: "MouseCursor",
      values: [MouseCursor.defer, MouseCursor.uncontrolled],
    );
    colorField(id: 'fillColor', title: 'Fill Color');
    colorField(id: 'checkColor', title: 'Check Color');
    colorField(id: 'focusColor', title: 'Color Field');
    colorField(id: 'hoverColor', title: 'Hover Color');
    colorField(id: 'overLayColor', title: 'Overlay Color');
    doubleField(id: 'splashRadius', title: 'Splash Radius');
    listField<MaterialTapTargetSize>(
      id: "materialTapTargetSize",
      title: "Material Tap Target Size",
      values: MaterialTapTargetSize.values,
    );
    doubleField(id: 'visualDensityVertical');
    doubleField(id: 'visualDensityHorizontal');
    booleanField(id: 'autoFocus', title: 'Auto Focus');
    doubleField(id: 'eccentricity');
    colorField(id: 'borderColor', title: 'Border Color');
    doubleField(id: 'borderWidth');
    listField<BorderStyle>(
        id: "borderStyle", title: "Border Style", values: BorderStyle.values);
    doubleField(id: 'strokeAlign');
    booleanField(id: 'isError', title: 'Is Error');
    stringField(id: 'semanticLabel', title: 'Semantic Label');
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';

typedef RadioProperties = ({
  ValueHolder<int?> value,
  ValueHolder<MouseCursor?> mouseCursor,
  ValueHolder<bool?> toggleable,
  ValueHolder<Color?> activeColor,
  ValueHolder<Color?> fillColor,
  ValueHolder<Color?> focusColor,
  ValueHolder<Color?> hoverColor,
  ValueHolder<Color?> overlayColor,
  ValueHolder<double?> splashRadius,
  ValueHolder<MaterialTapTargetSize?> materialTapTargetSize,
  ValueHolder<VisualDensity?> visualDensity,
  ValueHolder<bool?> autofocus,
});

class RadioPropertiesNotifier extends PropertiesNotifier<RadioProperties> {
  int selectedRadio = 0;

  @override
  Widget buildPreview(BuildContext context) {
    return Radio<int>(
      value: fieldValues.value.isSet ? fieldValues.value.value! : 0,
      groupValue: selectedRadio,
      onChanged: (v) {
        selectedRadio = v!;
        notifyListeners();
      },
      mouseCursor:
          fieldValues.mouseCursor.isSet ? fieldValues.mouseCursor.value : null,
      toggleable:
          fieldValues.toggleable.isSet ? fieldValues.toggleable.value! : false,
      activeColor:
          fieldValues.activeColor.isSet ? fieldValues.activeColor.value : null,
      fillColor: MaterialStatePropertyAll<Color?>(
        fieldValues.fillColor.isSet ? fieldValues.fillColor.value : null,
      ),
      focusColor:
          fieldValues.focusColor.isSet ? fieldValues.focusColor.value : null,
      hoverColor:
          fieldValues.hoverColor.isSet ? fieldValues.hoverColor.value : null,
      overlayColor: MaterialStatePropertyAll<Color?>(
        fieldValues.overlayColor.isSet ? fieldValues.overlayColor.value : null,
      ),
      splashRadius: fieldValues.splashRadius.isSet
          ? fieldValues.splashRadius.value
          : null,
      materialTapTargetSize: fieldValues.materialTapTargetSize.isSet
          ? fieldValues.materialTapTargetSize.value
          : null,
      visualDensity: fieldValues.visualDensity.isSet
          ? fieldValues.visualDensity.value
          : null,
      focusNode: FocusNode(),
      autofocus:
          fieldValues.autofocus.isSet ? fieldValues.autofocus.value! : false,
    );
  }

  @override
  String get code => '''
   Radio(
      value: ${fieldValues.value},
      groupValue: $selectedRadio,
      onChanged: (v) {
        setState(() {
          selectedRadio = v!;
        });
      },
      mouseCursor: ${fieldValues.mouseCursor},
      toggleable: ${fieldValues.toggleable ?? false},
      activeColor: ${fieldValues.activeColor},
      fillColor: MaterialStatePropertyAll<Color?>(
        ${fieldValues.fillColor},
      ),
      focusColor: ${fieldValues.focusColor},
      hoverColor: ${fieldValues.hoverColor},
      overlayColor: MaterialStatePropertyAll<Color?>(
        ${fieldValues.overlayColor},
      ),
      splashRadius: ${fieldValues.splashRadius},
      materialTapTargetSize: ${fieldValues.materialTapTargetSize},
      visualDensity: ${fieldValues.visualDensity},
      focusNode: FocusNode(),
      autofocus: ${fieldValues.autofocus ?? false},
    );
  ''';

  @override
  RadioProperties get fieldValues => (
        value: getValueOf('value'),
        mouseCursor: getValueOf('mouseCursor'),
        toggleable: getValueOf('toggleable'),
        activeColor: getValueOf('activeColor'),
        fillColor: getValueOf('fillColor'),
        focusColor: getValueOf('focusColor'),
        hoverColor: getValueOf('hoverColor'),
        overlayColor: getValueOf('overlayColor'),
        splashRadius: getValueOf('splashRadius'),
        materialTapTargetSize: getValueOf('materialTapTargetSize'),
        visualDensity: getValueOf('visualDensity'),
        autofocus: getValueOf('autofocus'),
      );

  @override
  void registerFields() {
    intField(id: "value", title: "Value");
    listField(
      id: "mouseCursor",
      title: "Mouse Cursor",
      values: [MouseCursor.defer, MouseCursor.uncontrolled],
    );
    booleanField(id: "toggleable", title: "Toggleable");
    colorField(id: "activeColor", title: "Active Color");
    colorField(id: "fillColor", title: "Fill Color");
    colorField(id: "focusColor", title: "Focus Color");
    colorField(id: "hoverColor", title: "Hover Color");
    colorField(id: "overlayColor", title: "Overlay Color");
    doubleField(id: "splashRadius", title: "Splash Radius");
    listField(
      id: "materialTapTargetSize",
      title: "materialTapTargetSize",
      values: MaterialTapTargetSize.values,
    );
    listField<VisualDensity>(
      id: "visualDensity",
      title: "visualDensity",
      values: [
        VisualDensity.comfortable,
        VisualDensity.compact,
        VisualDensity.standard,
      ],
    );
    booleanField(id: "autofocus", title: "autofocus");
  }
}

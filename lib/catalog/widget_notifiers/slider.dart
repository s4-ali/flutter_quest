import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';

typedef SliderProperties = ({
  ValueHolder<double?> value,
  ValueHolder<double?> secondaryTrackValue,
  ValueHolder<double?> min,
  ValueHolder<double?> max,
  ValueHolder<int?> divisions,
  ValueHolder<String?> label,
  ValueHolder<Color?> activeColor,
  ValueHolder<Color?> inactiveColor,
  ValueHolder<Color?> secondaryActiveColor,
  ValueHolder<Color?> thumbColor,
  ValueHolder<Color?> overlayColor,
  ValueHolder<MouseCursor?> mouseCursor,
  ValueHolder<bool?> autofocus,
  ValueHolder<SliderInteraction?> allowedInteraction,
});


class SliderPropertiesNotifier extends PropertiesNotifier<SliderProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return Slider(
      value: fieldValues.value.isSet? fieldValues.value.value! : 0,
      secondaryTrackValue: fieldValues.secondaryTrackValue.isSet? fieldValues.secondaryTrackValue.value : null,
      onChanged: (val) {},
      onChangeStart: (val) {},
      onChangeEnd: (val) {},
      min: fieldValues.min.isSet? fieldValues.min.value! : 0.0,
      max: fieldValues.max.isSet? fieldValues.max.value! : 1.0,
      divisions: fieldValues.divisions.isSet? fieldValues.divisions.value : null,
      label: fieldValues.label.isSet? fieldValues.label.value : null,
      activeColor: fieldValues.activeColor.isSet? fieldValues.activeColor.value : null,
      inactiveColor: fieldValues.inactiveColor.isSet? fieldValues.inactiveColor.value : null,
      secondaryActiveColor: fieldValues.secondaryActiveColor.isSet? fieldValues.secondaryActiveColor.value : null,
      thumbColor: fieldValues.thumbColor.isSet? fieldValues.thumbColor.value : null,
      overlayColor: MaterialStatePropertyAll<Color?>(fieldValues.overlayColor.isSet? fieldValues.overlayColor.value : null,),
      mouseCursor: fieldValues.mouseCursor.isSet? fieldValues.mouseCursor.value : null,
      semanticFormatterCallback: (val) {
        return "String";
      },
      focusNode: FocusNode(),
      autofocus: fieldValues.autofocus.isSet? fieldValues.autofocus.value! : false,
      allowedInteraction: fieldValues.allowedInteraction.isSet? fieldValues.allowedInteraction.value : null,
    );
  }

  @override
  String get code => '''
   Slider(
      value: ${fieldValues.value},
      secondaryTrackValue: ${fieldValues.secondaryTrackValue},
      onChanged: (val) {},
      onChangeStart: (val) {},
      onChangeEnd: (val) {},
      min: ${fieldValues.min},
      max: ${fieldValues.max},
      divisions: ${fieldValues.divisions},
      label: ${fieldValues.label},
      activeColor: ${fieldValues.activeColor},
      inactiveColor: ${fieldValues.inactiveColor},
      secondaryActiveColor: ${fieldValues.secondaryActiveColor},
      thumbColor: ${fieldValues.thumbColor},
      overlayColor: ${fieldValues.overlayColor},
      mouseCursor: ${fieldValues.mouseCursor},
      semanticFormatterCallback: (val) {
        return "String";
      },
      focusNode: FocusNode(),
      autofocus: ${fieldValues.autofocus},
      allowedInteraction: ${fieldValues.allowedInteraction},
    );
  ''';

  @override
  SliderProperties get fieldValues => (
        value: getValueOf('value'),
        secondaryTrackValue: getValueOf('secondaryTrackValue'),
        min: getValueOf('min'),
        max: getValueOf('max'),
        divisions: getValueOf('divisions'),
        label: getValueOf('label'),
        activeColor: getValueOf('activeColor'),
        inactiveColor: getValueOf('inactiveColor'),
        secondaryActiveColor: getValueOf('secondaryActiveColor'),
        thumbColor: getValueOf('thumbColor'),
        overlayColor: getValueOf('overlayColor'),
        mouseCursor: getValueOf('mouseCursor'),
        autofocus: getValueOf('autofocus'),
        allowedInteraction: getValueOf('allowedInteraction'),
      );

  @override
  void registerFields() {
    doubleField(id: "value", title: "Value");
    doubleField(id: "secondaryTrackValue", title: "Secondary Track Value");
    doubleField(id: "min", title: "Minimum value");
    doubleField(id: "max", title: "Maximum value");
    intField(id: "divisions", title: "Divisions");
    stringField(id: "label", title: "Label");
    colorField(id: "activeColor", title: "Active Color");
    colorField(id: "inactiveColor", title: "InactiveColor");
    colorField(id: "secondaryActiveColor", title: "Secondary Active Color");
    colorField(id: "thumbColor", title: "Thumb Color");
    colorField(id: "overlayColor", title: "Overlay Color");
    listField<MouseCursor>(
      id: "mouseCursor",
      title: "Mouse Cursor",
      values: [MouseCursor.defer, MouseCursor.uncontrolled],
    );
    booleanField(id: "autofocus", title: "autofocus");
    listField<SliderInteraction>(
      id: "allowedInteraction",
      title: "allowedInteraction",
      values: SliderInteraction.values,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class SliderPropertyExplorer extends StatelessWidget {
  const SliderPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Slider",
      builder: (provider) {
        final value = provider.doubleField(id: "Value", title: "Value");
        final secondaryTrackValue = provider.doubleField(
            id: "secondaryTrackValue", title: "Secondary Track Value");
        final min = provider.doubleField(id: "min", title: "Minimum value");
        final max = provider.doubleField(id: "max", title: "Maximum value");
        final divisions =
            provider.intField(id: "divisions", title: "Divisions");
        final label = provider.stringField(id: "label", title: "Label");
        final activeColor =
            provider.colorField(id: "activeColor", title: "Active Color");
        final inactiveColor =
            provider.colorField(id: "inactiveColor", title: "InactiveColor");
        final secondaryActiveColor = provider.colorField(
            id: "secondaryActiveColor", title: "Secondary Active Color");
        final thumbColor =
            provider.colorField(id: "thumbColor", title: "Thumb Color");
        final overlayColor =
            provider.colorField(id: "overlayColor", title: "Overlay Color");
        final mouseCursor = provider.listField(
            id: "mouseCursor",
            title: "Mouse Cursor",
            values: [MouseCursor.defer, MouseCursor.uncontrolled]);
        final autofocus =
            provider.booleanField(id: "autofocus", title: "autofocus");
        final allowedInteraction = provider.listField(
            id: "allowedInteraction",
            title: "allowedInteraction",
            values: SliderInteraction.values);

        return (
          widget: Slider(
            value: value ?? 0,
            secondaryTrackValue: secondaryTrackValue,
            onChanged: (val) {},
            onChangeStart: (val) {},
            onChangeEnd: (val) {},
            min: min ?? 0.0,
            max: max ?? 1.0,
            divisions: divisions,
            label: label,
            activeColor: activeColor,
            inactiveColor: inactiveColor,
            secondaryActiveColor: secondaryActiveColor,
            thumbColor: thumbColor,
            overlayColor: MaterialStatePropertyAll<Color?>(overlayColor),
            mouseCursor: mouseCursor,
            semanticFormatterCallback: (val) {
              return "String";
            },
            focusNode: FocusNode(),
            autofocus: autofocus ?? false,
            allowedInteraction: allowedInteraction,
          ),
          code: "Slider code goes here...",
        );
      },
    );
  }
}

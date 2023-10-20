import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class RadioPropertyExplorer extends StatefulWidget {
  const RadioPropertyExplorer({
    super.key,
  });

  @override
  State<RadioPropertyExplorer> createState() => _RadioPropertyExplorerState();
}

class _RadioPropertyExplorerState extends State<RadioPropertyExplorer> {
  int selectedRadio = 0;

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Radio",
      builder: (provider) {
        final value = provider.intField(id: "Value", title: "Value");
        final mouseCursor = provider.listField(
            id: "mouseCursor",
            title: "Mouse Cursor",
            values: [MouseCursor.defer, MouseCursor.uncontrolled]);
        final toggleable =
            provider.booleanField(id: "toggleable", title: "Toggleable");
        final activeColor =
            provider.colorField(id: "activeColor", title: "Active Color");
        final fillColor =
            provider.colorField(id: "fillColor", title: "Fill Color");
        final focusColor =
            provider.colorField(id: "focusColor", title: "Focus Color");
        final hoverColor =
            provider.colorField(id: "hoverColor", title: "Hover Color");
        final overlayColor =
            provider.colorField(id: "overlayColor", title: "Overlay Color");
        final splashRadius =
            provider.doubleField(id: "splashRadius", title: "Splash Radius");
        final materialTapTargetSize = provider.listField(
            id: "materialTapTargetSize",
            title: "materialTapTargetSize",
            values: MaterialTapTargetSize.values);
        final visualDensity = provider.listField<VisualDensity>(
            id: "visualDensity",
            title: "visualDensity",
            values: [
              VisualDensity.comfortable,
              VisualDensity.compact,
              VisualDensity.standard
            ]);
        final autofocus =
            provider.booleanField(id: "autofocus", title: "autofocus");

        return Radio(
          value: value,
          groupValue: selectedRadio,
          onChanged: (v) {
            setState(() {
              selectedRadio = v!;
            });
          },
          mouseCursor: mouseCursor,
          toggleable: toggleable ?? false,
          activeColor: activeColor,
          fillColor: MaterialStatePropertyAll<Color?>(
            fillColor,
          ),
          focusColor: focusColor,
          hoverColor: hoverColor,
          overlayColor: MaterialStatePropertyAll<Color?>(
            overlayColor,
          ),
          splashRadius: splashRadius,
          materialTapTargetSize: materialTapTargetSize,
          visualDensity: visualDensity,
          focusNode: FocusNode(),
          autofocus: autofocus ?? false,
        );
      },
    );
  }
}

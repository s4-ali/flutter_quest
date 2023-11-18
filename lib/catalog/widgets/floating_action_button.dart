import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/shape_border_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class FloatingActionButtonPropertyExplorer extends StatelessWidget {
  const FloatingActionButtonPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
        widgetName: "Floating Action Button",
        builder: (provider) {
          final tooltip = provider.stringField(id: "tooltip", title: "Tooltip");
          final foregroundColor = provider.colorField(
              id: "foregroundColor", title: "Foreground Color");
          final backgroundColor = provider.colorField(
              id: "backgroundColor", title: "Background Color");
          final focusColor =
          provider.colorField(id: "focusColor", title: "Focus Color");
          final hoverColor =
          provider.colorField(id: "hoverColor", title: "Hover Color");
          final splashColor =
          provider.colorField(id: "splashColor", title: "Splash Color");
          final elevation =
          provider.doubleField(id: "elevation", title: "Elevation");
          final focusElevation = provider.doubleField(
              id: "focusElevation", title: "Focus Elevation");
          final hoverElevation = provider.doubleField(
              id: "hoverElevation", title: "Hover Elevation");
          final highlightElevation = provider.doubleField(
              id: "highlightElevation", title: "Highlight Elevation");
          final disabledElevation = provider.doubleField(
              id: "disabledElevation", title: "Disabled Elevation");
          final mouseCursor = provider.listField<MouseCursor>(
              id: "mouseCursor",
              title: "MouseCursor",
              values: [MouseCursor.defer, MouseCursor.uncontrolled]);
          final mini = provider.booleanField(id: "mini", title: "mini");
          final shape = provider.shapeBorderField(id: "shape", title: "shape");
          final clipBehavior =
          provider.clipField(id: "clipBehavior", title: "clipBehavior");
          final autofocus =
          provider.booleanField(id: "autofocus", title: "Auto Focus");
          final materialTapTargetSize = provider.listField(
              id: "materialTapTargetSize",
              title: "materialTapTargetSize",
              values: MaterialTapTargetSize.values);
          final isExtended =
          provider.booleanField(id: "isExtended", title: "Is Extended");
          final enableFeedback = provider.booleanField(
              id: "enableFeedback", title: "Enable Feedback");
          final childText = provider.stringField(id: "childText", title: "Child Text");


          return FloatingActionButton(
            tooltip: tooltip,
            foregroundColor: foregroundColor,
            backgroundColor: backgroundColor,
            focusColor: focusColor,
            hoverColor: hoverColor,
            splashColor: splashColor,
            heroTag: () {},
            elevation: elevation,
            focusElevation: focusElevation,
            hoverElevation: hoverElevation,
            highlightElevation: highlightElevation,
            disabledElevation: disabledElevation,
            onPressed: () {},
            mouseCursor: mouseCursor,
            mini: mini ?? false,
            shape: shape,
            clipBehavior: clipBehavior ?? Clip.none,
            focusNode: FocusNode(),
            autofocus: autofocus ?? false,
            materialTapTargetSize: materialTapTargetSize,
            isExtended: isExtended ?? false,
            enableFeedback: enableFeedback,
            child: Text(childText?? ""),
          );
        });
  }
}

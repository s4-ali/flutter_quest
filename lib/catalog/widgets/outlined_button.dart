import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/alignment_field.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/edge_insets_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field_field.dart';
import 'package:flutter_quest/property_fields/text_style_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class OutlinedButtonPropertyExplorer extends StatelessWidget {
  const OutlinedButtonPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Outlined Button",
      builder: (provider) {

        final autofocus =
        provider.booleanField(id: "autofocus", title: "Autofocus");
        final clipBehavior =
        provider.clipField(id: "clipBehavior", title: "Clip Behavior");
        final backgroundColor = provider.colorField(
            id: "backgroundColor", title: "Background Color");
        final foregroundColor = provider.colorField(
            id: "foregroundColor", title: "Foreground Color");
        final overlayColor =
        provider.colorField(id: "overlayColor", title: "Overlay Color");
        final shadowColor =
        provider.colorField(id: "shadowColor", title: "Shadow Color");
        final surfaceTintColor = provider.colorField(
            id: "surfaceTintColor", title: "Surface Tint Color");
        final elevation =
        provider.doubleField(id: "elevation", title: "Elevation");
        final padding =
        provider.edgeInsetsField(id: "padding", title: "Padding");
        final minHeight =
        provider.doubleField(id: "minHeight", title: "Minimum Height");
        final minWidth =
        provider.doubleField(id: "minWidth", title: "Minimum Width");
        final maxHeight =
        provider.doubleField(id: "maxHeight", title: "Maximum Height");
        final maxWidth =
        provider.doubleField(id: "maxWidth", title: "Maximum Width");
        final fixedHeight =
        provider.doubleField(id: "fixedHeight", title: "Fixed Height");
        final fixedWidth =
        provider.doubleField(id: "fixedWidth", title: "Fixed Width");
        final iconColor = provider.colorField(
            id: "iconColor", title: "Icon Color");
        final iconSize = provider.doubleField(
            id: "iconSize", title: "iconSize");
        final borderColor = provider.colorField(
            id: "borderColor", title: "Border Color");
        final borderWidth = provider.doubleField(
            id: "borderWidth", title: "Border Width");
        final borderStyle = provider.listField(id: "borderStyle",
            title: "Border Style",
            values: BorderStyle.values);
        final strokeAlign = provider.listField(id: "strokeAlign",
            title: "Stroke Align",
            values: [
              BorderSide.strokeAlignCenter,
              BorderSide.strokeAlignInside,
              BorderSide.strokeAlignOutside,
            ]);
        final mouseCursor = provider.listField(id: "mouseCursor",
            title: "mouseCursor",
            values: [MouseCursor.uncontrolled, MouseCursor.defer]);
        final visualDensity = provider.listField<VisualDensity>(
            id: "visualDensity",
            title: "visualDensity",
            values: [
              VisualDensity.adaptivePlatformDensity,
              VisualDensity.compact,
              VisualDensity.comfortable,
            ]);
        final tapTargetSize = provider.listField(
            id: "materialTapTargetSize",
            title: "materialTapTargetSize",
            values: MaterialTapTargetSize.values);
        final animationSeconds = provider.intField(
            id: "animationSeconds", title: "animationSeconds");
        final animationMinutes = provider.intField(
            id: "animationMinutes", title: "animationMinutes");
        final enableFeedback = provider.booleanField(
            id: "enableFeedback", title: "enableFeedback");
        final alignment = provider.alignmentField(
            id: "alignment", title: "alignment");
        final textStyle = provider.textStyleField(
            id: "textStyle", title: "textStyle");
        final childText = provider.stringField(id: "childText", title: "Child Text");

        return OutlinedButton(
          onPressed: () {},
          onLongPress: () {},
          onHover: (v) {},
          onFocusChange: (v) {},
          style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color?>(
          backgroundColor,
        ),
        foregroundColor: MaterialStatePropertyAll<Color?>(
        foregroundColor,
        ),
        overlayColor: MaterialStatePropertyAll<Color?>(
        overlayColor,
        ),
        shadowColor: MaterialStatePropertyAll<Color?>(
        shadowColor,
        ),
        surfaceTintColor: MaterialStatePropertyAll<Color?>(
        surfaceTintColor
        ),
        elevation: MaterialStatePropertyAll<double?>(
        elevation,
        ),
        padding: MaterialStatePropertyAll<EdgeInsets?>(
        padding,
        ),
        minimumSize: MaterialStatePropertyAll<Size>(
        Size(minWidth ?? 0.0, minHeight ?? 0.0),
        ),
        fixedSize: MaterialStatePropertyAll<Size>(
        Size(fixedWidth ?? double.infinity,
        fixedHeight ?? double.infinity),
        ),
        maximumSize: MaterialStatePropertyAll<Size>(
        Size(maxWidth ?? double.infinity, maxHeight ?? double.infinity),
        ),
        iconColor: MaterialStatePropertyAll<Color?>(
        iconColor,
        ),
        iconSize: MaterialStatePropertyAll<double?>(
        iconSize,
        ),
        side: MaterialStatePropertyAll<BorderSide?>(
        BorderSide(
        color: borderColor ?? Colors.black,
        width: borderWidth ?? 1.0,
        style: borderStyle ?? BorderStyle.solid,
        strokeAlign: strokeAlign ?? BorderSide.strokeAlignCenter,
        ),
        ),
        shape: const MaterialStatePropertyAll(
        RoundedRectangleBorder(
        side: BorderSide.none,
        ),
        ),
        mouseCursor: MaterialStatePropertyAll<MouseCursor?>(
        mouseCursor,
        ),
        visualDensity: visualDensity,
        tapTargetSize: tapTargetSize,
        animationDuration: Duration(
        seconds: animationSeconds ?? 0,
        minutes: animationMinutes ?? 0,
        ),
        enableFeedback: enableFeedback,
        alignment: alignment,
        splashFactory: NoSplash.splashFactory,//only one option available
        textStyle: MaterialStatePropertyAll<TextStyle?>(
        textStyle,
        ),
        ),
          focusNode: FocusNode(),
          autofocus: autofocus ?? false,
          clipBehavior: clipBehavior ?? Clip.none,
          statesController: MaterialStatesController(),
          child: Text(childText?? "Button"),
        );
      },
    );
  }
}

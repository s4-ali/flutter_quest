import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/alignment_field.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/edge_insets_field.dart';
import 'package:flutter_quest/property_fields/icon_data_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';
import 'package:flutter_quest/property_fields/text_style_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class IconButtonPropertyExplorer extends StatelessWidget {
  const IconButtonPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Icon Button",
      builder: (provider) {
        final iconSize = provider.doubleField(
            id: "iconSize", title: "Icon Size");
        final visualDensity = provider.listField<VisualDensity>(
            id: "visualDensity",
            title: "visualDensity",
            values: [
              VisualDensity.comfortable,
              VisualDensity.compact,
              VisualDensity.adaptivePlatformDensity
            ]);
        final icon = provider.iconDataField(id: "icon", title: "Icon");
        final padding = provider.edgeInsetsField(
            id: "padding", title: "Padding");
        final alignment = provider.alignmentField(
            id: "alignment", title: "Alignment");
        final splashRadius = provider.doubleField(
            id: "splashRadius", title: "Splash Radius");
        final color = provider.colorField(id: "color", title: "Color");
        final focusColor = provider.colorField(
            id: "focusColor", title: "Focus Color");
        final hoverColor = provider.colorField(
            id: "hoverColor", title: "Hover Color");
        final highlightColor = provider.colorField(
            id: "highlightColor", title: "Highlight Color");
        final splashColor = provider.colorField(
            id: "splashColor", title: "Splash Color");
        final disabledColor = provider.colorField(
            id: "disabledColor", title: "Disabled Color");
        final mouseCursor = provider.listField<MouseCursor>(
            id: "mouseCursor",
            title: "MouseCursor",
            values: [MouseCursor.defer, MouseCursor.uncontrolled]);
        final tooltip = provider.stringField(id: "tooltip", title: "Tooltip");
        final enableFeedback = provider.booleanField(id: "enableFeedback", title: "Enable Feedback");
        final minWidth =
        provider.doubleField(id: "minWidth", title: "Minimum Width");
        final maxWidth =
        provider.doubleField(id: "maxWidth", title: "Maximum Width");
        final minHeight =
        provider.doubleField(id: "minHeight", title: "Minimum Height");
        final maxHeight =
        provider.doubleField(id: "maxHeight", title: "Maximum Height");

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
        final stylePadding =
        provider.edgeInsetsField(id: "padding", title: "Padding");
        final styleMinHeight =
        provider.doubleField(id: "minHeight", title: "Minimum Height");
        final styleMinWidth =
        provider.doubleField(id: "minWidth", title: "Minimum Width");
        final styleMaxHeight =
        provider.doubleField(id: "maxHeight", title: "Maximum Height");
        final styleMaxWidth =
        provider.doubleField(id: "maxWidth", title: "Maximum Width");
        final styleFixedHeight =
        provider.doubleField(id: "fixedHeight", title: "Fixed Height");
        final styleFixedWidth =
        provider.doubleField(id: "fixedWidth", title: "Fixed Width");
        final iconColor = provider.colorField(
            id: "iconColor", title: "Icon Color");
        final styleIconSize = provider.doubleField(
            id: "iconSize", title: "Icon Size");
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
        final styleMouseCursor = provider.listField(id: "mouseCursor",
            title: "mouseCursor",
            values: [MouseCursor.uncontrolled, MouseCursor.defer]);
        final styleVisualDensity = provider.listField<VisualDensity>(
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
            id: "animationSeconds", title: "Animation Seconds");
        final animationMinutes = provider.intField(
            id: "animationMinutes", title: "Animation Minutes");
        final styleEnableFeedback = provider.booleanField(
            id: "enableFeedback", title: "enable Feedback");
        final styleAlignment = provider.alignmentField(
            id: "alignment", title: "Alignment");
        final textStyle = provider.textStyleField(
            id: "textStyle", title: "Text Style");

        final isSelected = provider.booleanField(id: "isSelected", title: "Is Selected");
        final selectedIcon = provider.iconDataField(id: "selectedIcon", title: "Selected Icon");



        return IconButton(
          iconSize: iconSize,
          visualDensity: visualDensity,
          padding: padding,
          alignment: alignment,
          splashRadius: splashRadius,
          color: color,
          focusColor: focusColor,
          hoverColor: hoverColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          disabledColor: disabledColor,
          onPressed: () {},
          mouseCursor: mouseCursor,
          focusNode: FocusNode(),
          tooltip: tooltip,
          enableFeedback: enableFeedback,
          constraints: BoxConstraints(
            minWidth: minWidth?? 0.0,
            maxWidth: maxWidth?? double.infinity,
            minHeight: minHeight?? 0.0,
            maxHeight: maxHeight?? double.infinity,
          ),
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
              stylePadding,
            ),
            minimumSize: MaterialStatePropertyAll<Size>(
              Size(styleMinWidth ?? 0.0, styleMinHeight ?? 0.0),
            ),
            fixedSize: MaterialStatePropertyAll<Size>(
              Size(styleFixedWidth ?? double.infinity,
                  styleFixedHeight ?? double.infinity),
            ),
            maximumSize: MaterialStatePropertyAll<Size>(
              Size(styleMaxWidth ?? double.infinity, styleMaxHeight ?? double.infinity),
            ),
            iconColor: MaterialStatePropertyAll<Color?>(
              iconColor,
            ),
            iconSize: MaterialStatePropertyAll<double?>(
              styleIconSize,
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
              styleMouseCursor,
            ),
            visualDensity: styleVisualDensity,
            tapTargetSize: tapTargetSize,
            animationDuration: Duration(
              seconds: animationSeconds ?? 0,
              minutes: animationMinutes ?? 0,
            ),
            enableFeedback: styleEnableFeedback,
            alignment: styleAlignment,
            splashFactory: NoSplash.splashFactory,//only one option available
            textStyle: MaterialStatePropertyAll<TextStyle?>(
              textStyle,
            ),
          ),
          isSelected: isSelected,
          selectedIcon: Icon(
              selectedIcon
          ),
          icon: Icon(
              icon
          ),


        );
      },
    );
  }
}

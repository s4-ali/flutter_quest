import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/alignment_field.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/edge_insets_field.dart';
import 'package:flutter_quest/property_fields/icon_data_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';
import 'package:flutter_quest/property_fields/text_style_field.dart';

typedef IconButtonProperties = ({
  ValueHolder<double?> iconSize,
  ValueHolder<VisualDensity?> visualDensity,
  ValueHolder<IconData?> icon,
  ValueHolder<EdgeInsets?> padding,
  ValueHolder<Alignment?> alignment,
  ValueHolder<double?> splashRadius,
  ValueHolder<Color?> color,
  ValueHolder<Color?> focusColor,
  ValueHolder<Color?> hoverColor,
  ValueHolder<Color?> highlightColor,
  ValueHolder<Color?> splashColor,
  ValueHolder<Color?> disabledColor,
  ValueHolder<MouseCursor?> mouseCursor,
  ValueHolder<String?> tooltip,
  ValueHolder<bool?> enableFeedback,
  ValueHolder<double?> minWidth,
  ValueHolder<double?> maxWidth,
  ValueHolder<double?> minHeight,
  ValueHolder<double?> maxHeight,
  ValueHolder<Color?> backgroundColor,
  ValueHolder<Color?> foregroundColor,
  ValueHolder<Color?> overlayColor,
  ValueHolder<Color?> shadowColor,
  ValueHolder<Color?> surfaceTintColor,
  ValueHolder<double?> elevation,
  ValueHolder<EdgeInsets?> stylePadding,
  ValueHolder<double?> styleMinHeight,
  ValueHolder<double?> styleMinWidth,
  ValueHolder<double?> styleMaxHeight,
  ValueHolder<double?> styleMaxWidth,
  ValueHolder<double?> styleFixedHeight,
  ValueHolder<double?> styleFixedWidth,
  ValueHolder<Color?> iconColor,
  ValueHolder<double?> styleIconSize,
  ValueHolder<Color?> borderColor,
  ValueHolder<double?> borderWidth,
  ValueHolder<BorderStyle?> borderStyle,
  ValueHolder<double?> strokeAlign,
  ValueHolder<MouseCursor?> styleMouseCursor,
  ValueHolder<VisualDensity?> styleVisualDensity,
  ValueHolder<MaterialTapTargetSize?> tapTargetSize,
  ValueHolder<int?> animationSeconds,
  ValueHolder<int?> animationMinutes,
  ValueHolder<bool?> styleEnableFeedback,
  ValueHolder<Alignment?> styleAlignment,
  ValueHolder<TextStyle?> textStyle,
  ValueHolder<bool?> isSelected,
  ValueHolder<IconData?> selectedIcon,
});

class IconButtonPropertiesNotifier
    extends PropertiesNotifier<IconButtonProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return IconButton(
      iconSize: fieldValues.iconSize.isSet? fieldValues.iconSize.value : null,
      visualDensity: fieldValues.visualDensity.isSet? fieldValues.visualDensity.value : null,
      padding: fieldValues.padding.isSet? fieldValues.padding.value : null,
      alignment: fieldValues.alignment.isSet? fieldValues.alignment.value : null,
      splashRadius: fieldValues.splashRadius.isSet? fieldValues.splashRadius.value : null,
      color: fieldValues.color.isSet? fieldValues.color.value : null,
      focusColor: fieldValues.focusColor.isSet? fieldValues.focusColor.value : null,
      hoverColor: fieldValues.hoverColor.isSet? fieldValues.hoverColor.value : null,
      highlightColor: fieldValues.highlightColor.isSet? fieldValues.highlightColor.value : null,
      splashColor: fieldValues.splashColor.isSet? fieldValues.splashColor.value : null,
      disabledColor: fieldValues.disabledColor.isSet? fieldValues.disabledColor.value : null,
      onPressed: () {},
      mouseCursor: fieldValues.mouseCursor.isSet? fieldValues.mouseCursor.value : null,
      focusNode: FocusNode(),
      tooltip: fieldValues.tooltip.isSet? fieldValues.tooltip.value : null,
      enableFeedback: fieldValues.enableFeedback.isSet? fieldValues.enableFeedback.value : null,
      constraints: BoxConstraints(
        minWidth: fieldValues.minWidth.isSet? fieldValues.minWidth.value! : 0.0,
        maxWidth: fieldValues.maxWidth.isSet? fieldValues.maxWidth.value! : double.infinity,
        minHeight: fieldValues.minHeight.isSet? fieldValues.minHeight.value! : 0.0,
        maxHeight: fieldValues.maxHeight.isSet? fieldValues.maxHeight.value! : double.infinity,
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color?>(
          fieldValues.backgroundColor.isSet? fieldValues.backgroundColor.value : null,
        ),
        foregroundColor: MaterialStatePropertyAll<Color?>(
          fieldValues.foregroundColor.isSet? fieldValues.foregroundColor.value : null,
        ),
        overlayColor: MaterialStatePropertyAll<Color?>(
          fieldValues.overlayColor.isSet? fieldValues.overlayColor.value : null,
        ),
        shadowColor: MaterialStatePropertyAll<Color?>(
          fieldValues.shadowColor.isSet? fieldValues.shadowColor.value : null,
        ),
        surfaceTintColor:
        MaterialStatePropertyAll<Color?>(fieldValues.surfaceTintColor.isSet? fieldValues.surfaceTintColor.value : null,),
        elevation: MaterialStatePropertyAll<double?>(
          fieldValues.elevation.isSet? fieldValues.elevation.value : null,
        ),
        padding: MaterialStatePropertyAll<EdgeInsets?>(
          fieldValues.stylePadding.isSet? fieldValues.stylePadding.value : null,
        ),
        minimumSize: MaterialStatePropertyAll<Size>(
          Size(fieldValues.styleMinWidth.isSet? fieldValues.styleMinWidth.value! : 0.0,
              fieldValues.styleMinHeight.isSet? fieldValues.styleMinHeight.value! : 0.0),
        ),
        fixedSize: MaterialStatePropertyAll<Size>(
          Size(fieldValues.styleFixedWidth.isSet? fieldValues.styleFixedWidth.value! : double.infinity,
              fieldValues.styleFixedHeight.isSet? fieldValues.styleFixedHeight.value! : double.infinity),
        ),
        maximumSize: MaterialStatePropertyAll<Size>(
          Size(fieldValues.styleMaxWidth.isSet? fieldValues.styleMaxWidth.value! : double.infinity,
              fieldValues.styleMaxHeight.isSet? fieldValues.styleMaxHeight.value! : double.infinity),
        ),
        iconColor: MaterialStatePropertyAll<Color?>(
          fieldValues.iconColor.isSet? fieldValues.iconColor.value : null,
        ),
        iconSize: MaterialStatePropertyAll<double?>(
          fieldValues.styleIconSize.isSet? fieldValues.styleIconSize.value : null,
        ),
        side: MaterialStatePropertyAll<BorderSide?>(
          BorderSide(
            color: fieldValues.borderColor.isSet? fieldValues.borderColor.value! : Colors.black,
            width: fieldValues.borderWidth.isSet? fieldValues.borderWidth.value! : 1.0,
            style: fieldValues.borderStyle.isSet? fieldValues.borderStyle.value! : BorderStyle.solid,
            strokeAlign: fieldValues.strokeAlign.isSet? fieldValues.strokeAlign.value! : BorderSide.strokeAlignCenter,
          ),
        ),
        shape: const MaterialStatePropertyAll(
          RoundedRectangleBorder(
            side: BorderSide.none,
          ),
        ),
        mouseCursor: MaterialStatePropertyAll<MouseCursor?>(
          fieldValues.styleMouseCursor.isSet? fieldValues.styleMouseCursor.value : null,
        ),
        visualDensity: fieldValues.styleVisualDensity.isSet? fieldValues.styleVisualDensity.value : null,
        tapTargetSize: fieldValues.tapTargetSize.isSet? fieldValues.tapTargetSize.value : null,
        animationDuration: Duration(
          seconds: fieldValues.animationSeconds.isSet? fieldValues.animationSeconds.value! : 0,
          minutes: fieldValues.animationMinutes.isSet? fieldValues.animationMinutes.value! : 0,
        ),
        enableFeedback: fieldValues.styleEnableFeedback.isSet? fieldValues.styleEnableFeedback.value : null,
        alignment: fieldValues.styleAlignment.isSet? fieldValues.styleAlignment.value : null,
        splashFactory: NoSplash.splashFactory,
        textStyle: MaterialStatePropertyAll<TextStyle?>(
          fieldValues.textStyle.isSet? fieldValues.textStyle.value : null,
        ),
      ),
      isSelected: fieldValues.isSelected.isSet? fieldValues.isSelected.value : null,
      selectedIcon: Icon(fieldValues.selectedIcon.isSet? fieldValues.selectedIcon.value : null,),
      icon: Icon(fieldValues.icon.isSet? fieldValues.icon.value : null,),
    );
  }

  @override
  String get code => '''
IconButton(
  iconSize: ${fieldValues.iconSize},
  visualDensity: ${fieldValues.visualDensity},
  padding: ${fieldValues.padding},
  alignment: ${fieldValues.alignment},
  splashRadius: ${fieldValues.splashRadius},
  color: ${fieldValues.color},
  focusColor: ${fieldValues.focusColor},
  hoverColor: ${fieldValues.hoverColor},
  highlightColor: ${fieldValues.highlightColor},
  splashColor: ${fieldValues.splashColor},
  disabledColor: ${fieldValues.disabledColor},
  onPressed: () {},
  mouseCursor: ${fieldValues.mouseCursor},
  focusNode: FocusNode(),
  tooltip: ${fieldValues.tooltip},
  enableFeedback: ${fieldValues.enableFeedback},
  constraints: BoxConstraints(
    minWidth: ${fieldValues.minWidth} ?? 0.0,
    maxWidth: ${fieldValues.maxWidth} ?? double.infinity,
    minHeight: ${fieldValues.minHeight} ?? 0.0,
    maxHeight: ${fieldValues.maxHeight} ?? double.infinity,
  ),
  style: ButtonStyle(
    backgroundColor: MaterialStatePropertyAll<Color?>(
      ${fieldValues.backgroundColor},
    ),
    foregroundColor: MaterialStatePropertyAll<Color?>(
      ${fieldValues.foregroundColor},
    ),
    overlayColor: MaterialStatePropertyAll<Color?>(
      ${fieldValues.overlayColor},
    ),
    shadowColor: MaterialStatePropertyAll<Color?>(
      ${fieldValues.shadowColor},
    ),
    surfaceTintColor: MaterialStatePropertyAll<Color?>(${fieldValues.surfaceTintColor}),
    elevation: MaterialStatePropertyAll<double?>(
      ${fieldValues.elevation},
    ),
    padding: MaterialStatePropertyAll<EdgeInsets?>(
      ${fieldValues.stylePadding},
    ),
    minimumSize: MaterialStatePropertyAll<Size>(
      Size(${fieldValues.styleMinWidth} ?? 0.0, ${fieldValues.styleMinHeight} ?? 0.0),
    ),
    fixedSize: MaterialStatePropertyAll<Size>(
      Size(${fieldValues.styleFixedWidth} ?? double.infinity, ${fieldValues.styleFixedHeight} ?? double.infinity),
    ),
    maximumSize: MaterialStatePropertyAll<Size>(
      Size(${fieldValues.styleMaxWidth} ?? double.infinity, ${fieldValues.styleMaxHeight} ?? double.infinity),
    ),
    iconColor: MaterialStatePropertyAll<Color?>(
      ${fieldValues.iconColor},
    ),
    iconSize: MaterialStatePropertyAll<double?>(
      ${fieldValues.styleIconSize},
    ),
    side: MaterialStatePropertyAll<BorderSide?>(
      BorderSide(
        color: ${fieldValues.borderColor} ?? Colors.black,
        width: ${fieldValues.borderWidth} ?? 1.0,
        style: ${fieldValues.borderStyle} ?? BorderStyle.solid,
        strokeAlign: ${fieldValues.strokeAlign} ?? BorderSide.strokeAlignCenter,
      ),
    ),
    shape: const MaterialStatePropertyAll(
      RoundedRectangleBorder(
        side: BorderSide.none,
      ),
    ),
    mouseCursor: MaterialStatePropertyAll<MouseCursor?>(
      ${fieldValues.styleMouseCursor},
    ),
    visualDensity: ${fieldValues.styleVisualDensity},
    tapTargetSize: ${fieldValues.tapTargetSize},
    animationDuration: Duration(
      seconds: ${fieldValues.animationSeconds} ?? 0,
      minutes: ${fieldValues.animationMinutes} ?? 0,
    ),
    enableFeedback: ${fieldValues.styleEnableFeedback},
    alignment: ${fieldValues.styleAlignment},
    splashFactory: NoSplash.splashFactory,
    textStyle: MaterialStatePropertyAll<TextStyle?>(
      ${fieldValues.textStyle},
    ),
  ),
  isSelected: ${fieldValues.isSelected},
  selectedIcon: Icon(${fieldValues.selectedIcon}),
  icon: Icon(${fieldValues.icon}),
)
''';

  @override
  IconButtonProperties get fieldValues => (
        iconSize: getValueOf('iconSize'),
        visualDensity: getValueOf('visualDensity'),
        icon: getValueOf('icon'),
        padding: getValueOf('padding'),
        alignment: getValueOf('alignment'),
        splashRadius: getValueOf('splashRadius'),
        color: getValueOf('color'),
        focusColor: getValueOf('focusColor'),
        hoverColor: getValueOf('hoverColor'),
        highlightColor: getValueOf('highlightColor'),
        splashColor: getValueOf('splashColor'),
        disabledColor: getValueOf('disabledColor'),
        mouseCursor: getValueOf('mouseCursor'),
        tooltip: getValueOf('tooltip'),
        enableFeedback: getValueOf('enableFeedback'),
        minWidth: getValueOf('minWidth'),
        maxWidth: getValueOf('maxWidth'),
        minHeight: getValueOf('minHeight'),
        maxHeight: getValueOf('maxHeight'),
        backgroundColor: getValueOf('backgroundColor'),
        foregroundColor: getValueOf('foregroundColor'),
        overlayColor: getValueOf('overlayColor'),
        shadowColor: getValueOf('shadowColor'),
        surfaceTintColor: getValueOf('surfaceTintColor'),
        elevation: getValueOf('elevation'),
        stylePadding: getValueOf('stylePadding'),
        styleMinHeight: getValueOf('styleMinHeight'),
        styleMinWidth: getValueOf('styleMinWidth'),
        styleMaxHeight: getValueOf('styleMaxHeight'),
        styleMaxWidth: getValueOf('styleMaxWidth'),
        styleFixedHeight: getValueOf('styleFixedHeight'),
        styleFixedWidth: getValueOf('styleFixedWidth'),
        iconColor: getValueOf('iconColor'),
        styleIconSize: getValueOf('styleIconSize'),
        borderColor: getValueOf('borderColor'),
        borderWidth: getValueOf('borderWidth'),
        borderStyle: getValueOf('borderStyle'),
        strokeAlign: getValueOf('strokeAlign'),
        styleMouseCursor: getValueOf('styleMouseCursor'),
        styleVisualDensity: getValueOf('styleVisualDensity'),
        tapTargetSize: getValueOf('tapTargetSize'),
        animationSeconds: getValueOf('animationSeconds'),
        animationMinutes: getValueOf('animationMinutes'),
        styleEnableFeedback: getValueOf('styleEnableFeedback'),
        styleAlignment: getValueOf('styleAlignment'),
        textStyle: getValueOf('textStyle'),
        isSelected: getValueOf('isSelected'),
        selectedIcon: getValueOf('selectedIcon'),
      );

  @override
  void registerFields() {
    doubleField(id: "iconSize", title: "Icon Size");
    listField<VisualDensity>(
        id: "visualDensity",
        title: "visualDensity",
        values: [
          VisualDensity.comfortable,
          VisualDensity.compact,
          VisualDensity.adaptivePlatformDensity
        ]);
    iconDataField(id: "icon", title: "Icon");
    edgeInsetsField(id: "padding", title: "Padding");
    alignmentField(id: "alignment", title: "Alignment");
    doubleField(id: "splashRadius", title: "Splash Radius");
    colorField(id: "color", title: "Color");
    colorField(id: "focusColor", title: "Focus Color");
    colorField(id: "hoverColor", title: "Hover Color");
    colorField(id: "highlightColor", title: "Highlight Color");
    colorField(id: "splashColor", title: "Splash Color");
    colorField(id: "disabledColor", title: "Disabled Color");
    listField<MouseCursor>(
        id: "mouseCursor",
        title: "MouseCursor",
        values: [MouseCursor.defer, MouseCursor.uncontrolled]);
    stringField(id: "tooltip", title: "Tooltip");
    booleanField(id: "enableFeedback", title: "Enable Feedback");
    doubleField(id: "minWidth", title: "Minimum Width");
    doubleField(id: "maxWidth", title: "Maximum Width");
    doubleField(id: "minHeight", title: "Minimum Height");
    doubleField(id: "maxHeight", title: "Maximum Height");
    colorField(id: "backgroundColor", title: "Background Color");
    colorField(id: "foregroundColor", title: "Foreground Color");
    colorField(id: "overlayColor", title: "Overlay Color");
    colorField(id: "shadowColor", title: "Shadow Color");
    colorField(id: "surfaceTintColor", title: "Surface Tint Color");
    doubleField(id: "elevation", title: "Elevation");
    edgeInsetsField(id: "padding", title: "Padding");
    doubleField(id: "minHeight", title: "Minimum Height");
    doubleField(id: "minWidth", title: "Minimum Width");
    doubleField(id: "maxHeight", title: "Maximum Height");
    doubleField(id: "maxWidth", title: "Maximum Width");
    doubleField(id: "fixedHeight", title: "Fixed Height");
    doubleField(id: "fixedWidth", title: "Fixed Width");
    colorField(id: "iconColor", title: "Icon Color");
    doubleField(id: "iconSize", title: "Icon Size");
    colorField(id: "borderColor", title: "Border Color");
    doubleField(id: "borderWidth", title: "Border Width");
    listField(
        id: "borderStyle", title: "Border Style", values: BorderStyle.values);
    listField(id: "strokeAlign", title: "Stroke Align", values: [
      BorderSide.strokeAlignCenter,
      BorderSide.strokeAlignInside,
      BorderSide.strokeAlignOutside,
    ]);
    listField(
        id: "mouseCursor",
        title: "mouseCursor",
        values: [MouseCursor.uncontrolled, MouseCursor.defer]);
    listField<VisualDensity>(
        id: "visualDensity",
        title: "visualDensity",
        values: [
          VisualDensity.adaptivePlatformDensity,
          VisualDensity.compact,
          VisualDensity.comfortable,
        ]);
    listField(
        id: "materialTapTargetSize",
        title: "materialTapTargetSize",
        values: MaterialTapTargetSize.values);
    intField(id: "animationSeconds", title: "Animation Seconds");
    intField(id: "animationMinutes", title: "Animation Minutes");
    booleanField(id: "enableFeedback", title: "enable Feedback");
    alignmentField(id: "alignment", title: "Alignment");
    textStyleField(id: "textStyle", title: "Text Style");
    booleanField(id: "isSelected", title: "Is Selected");
    iconDataField(id: "selectedIcon", title: "Selected Icon");
  }
}

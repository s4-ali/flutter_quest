import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/alignment_field.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/edge_insets_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';
import 'package:flutter_quest/property_fields/text_style_field.dart';

typedef TextButtonProperties = ({
  ValueHolder<Color?> backgroundColor,
  ValueHolder<Color?> foregroundColor,
  ValueHolder<Color?> overlayColor,
  ValueHolder<Color?> shadowColor,
  ValueHolder<Color?> surfaceTintColor,
  ValueHolder<double?> elevation,
  ValueHolder<EdgeInsets?> padding,
  ValueHolder<double?> minHeight,
  ValueHolder<double?> minWidth,
  ValueHolder<double?> maxHeight,
  ValueHolder<double?> maxWidth,
  ValueHolder<double?> fixedHeight,
  ValueHolder<double?> fixedWidth,
  ValueHolder<Color?> iconColor,
  ValueHolder<double?> iconSize,
  ValueHolder<Color?> borderColor,
  ValueHolder<double?> borderWidth,
  ValueHolder<BorderStyle?> borderStyle,
  ValueHolder<double?> strokeAlign,
  ValueHolder<MouseCursor?> mouseCursor,
  ValueHolder<VisualDensity?> visualDensity,
  ValueHolder<MaterialTapTargetSize?> tapTargetSize,
  ValueHolder<int?> animationSeconds,
  ValueHolder<int?> animationMinutes,
  ValueHolder<bool?> enableFeedback,
  ValueHolder<Alignment?> alignment,
  ValueHolder<TextStyle?> textStyle,
  ValueHolder<bool?> autofocus,
  ValueHolder<Clip?> clipBehavior,
  ValueHolder<String?> text,
  ValueHolder<bool?> isSemanticButton,
});

class TextButtonPropertiesNotifier
    extends PropertiesNotifier<TextButtonProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return TextButton(
      onPressed: () {},
      onLongPress: () {},
      onHover: (v) {},
      onFocusChange: (v) {},
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
        surfaceTintColor: MaterialStatePropertyAll<Color?>(
          fieldValues.surfaceTintColor.isSet? fieldValues.surfaceTintColor.value : null,
        ),
        elevation: MaterialStatePropertyAll<double?>(
          fieldValues.elevation.isSet? fieldValues.elevation.value : null,
        ),
        padding: MaterialStatePropertyAll<EdgeInsets?>(
          fieldValues.padding.isSet? fieldValues.padding.value : null,
        ),
        minimumSize: MaterialStatePropertyAll<Size>(
          Size(fieldValues.minWidth.isSet? fieldValues.minWidth.value! : 0.0, fieldValues.minHeight.isSet? fieldValues.minHeight.value! : 0.0),
        ),
        fixedSize: MaterialStatePropertyAll<Size>(
          Size(
            fieldValues.fixedWidth.isSet? fieldValues.fixedWidth.value! : double.infinity,
            fieldValues.fixedHeight.isSet? fieldValues.fixedHeight.value! : double.infinity,
          ),
        ),
        maximumSize: MaterialStatePropertyAll<Size>(
          Size(
            fieldValues.maxWidth.isSet? fieldValues.maxWidth.value! : double.infinity,
            fieldValues.maxHeight.isSet? fieldValues.maxHeight.value! : double.infinity,
          ),
        ),
        iconColor: MaterialStatePropertyAll<Color?>(
          fieldValues.iconColor.isSet? fieldValues.iconColor.value : null,
        ),
        iconSize: MaterialStatePropertyAll<double?>(
          fieldValues.iconSize.isSet? fieldValues.iconSize.value : null,
        ),
        side: MaterialStatePropertyAll<BorderSide?>(
          BorderSide(
            color: fieldValues.borderColor.isSet? fieldValues.borderColor.value! : Colors.black,
            width: fieldValues.borderWidth.isSet? fieldValues.borderWidth.value! : 1.0,
            style: fieldValues.borderStyle.isSet? fieldValues.borderStyle.value! : BorderStyle.solid,
            strokeAlign:
            fieldValues.strokeAlign.isSet? fieldValues.strokeAlign.value! : BorderSide.strokeAlignCenter,
          ),
        ),
        shape: const MaterialStatePropertyAll(
          RoundedRectangleBorder(
            side: BorderSide.none,
          ),
        ),
        mouseCursor: MaterialStatePropertyAll<MouseCursor?>(
          fieldValues.mouseCursor.isSet? fieldValues.mouseCursor.value : null,
        ),
        visualDensity: fieldValues.visualDensity.isSet? fieldValues.visualDensity.value : null,
        tapTargetSize: fieldValues.tapTargetSize.isSet? fieldValues.tapTargetSize.value : null,
        animationDuration: Duration(
          seconds: fieldValues.animationSeconds.isSet? fieldValues.animationSeconds.value! : 0,
          minutes: fieldValues.animationMinutes.isSet? fieldValues.animationMinutes.value! : 0,
        ),
        enableFeedback: fieldValues.enableFeedback.isSet? fieldValues.enableFeedback.value : null,
        alignment: fieldValues.alignment.isSet? fieldValues.alignment.value : null,
        splashFactory: NoSplash.splashFactory,
        textStyle: MaterialStatePropertyAll<TextStyle?>(
          fieldValues.textStyle.isSet? fieldValues.textStyle.value : null,
        ),
      ),
      focusNode: FocusNode(),
      autofocus: fieldValues.autofocus.isSet? fieldValues.autofocus.value! : false,
      clipBehavior: fieldValues.clipBehavior.isSet? fieldValues.clipBehavior.value! : Clip.none,
      isSemanticButton: fieldValues.isSemanticButton.isSet? fieldValues.isSemanticButton.value! : true,
      child: Text(
        fieldValues.text.isSet? fieldValues.text.value! : '',
      ),
    );
  }

  @override
  String get code => '''
   TextButton(
      onPressed: () {},
      onLongPress: () {},
      onHover: (v) {},
      onFocusChange: (v) {},
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
        surfaceTintColor: MaterialStatePropertyAll<Color?>(
          ${fieldValues.surfaceTintColor},
        ),
        elevation: MaterialStatePropertyAll<double?>(
          ${fieldValues.elevation},
        ),
        padding: MaterialStatePropertyAll<EdgeInsets?>(
          ${fieldValues.padding},
        ),
        minimumSize: MaterialStatePropertyAll<Size>(
          Size(${fieldValues.minWidth ?? 0.0}, ${fieldValues.minHeight ?? 0.0}),
        ),
        fixedSize: MaterialStatePropertyAll<Size>(
          Size(
            ${fieldValues.fixedWidth ?? double.infinity},
            ${fieldValues.fixedHeight ?? double.infinity},
          ),
        ),
        maximumSize: MaterialStatePropertyAll<Size>(
          Size(
            ${fieldValues.maxWidth ?? double.infinity},
            ${fieldValues.maxHeight ?? double.infinity},
          ),
        ),
        iconColor: MaterialStatePropertyAll<Color?>(
          ${fieldValues.iconColor},
        ),
        iconSize: MaterialStatePropertyAll<double?>(
          ${fieldValues.iconSize},
        ),
        side: MaterialStatePropertyAll<BorderSide?>(
          BorderSide(
            color: ${fieldValues.borderColor ?? Colors.black},
            width: ${fieldValues.borderWidth ?? 1.0},
            style: ${fieldValues.borderStyle ?? BorderStyle.solid},
            strokeAlign: ${fieldValues.strokeAlign ?? BorderSide.strokeAlignCenter},
          ),
        ),
        shape: const MaterialStatePropertyAll(
          RoundedRectangleBorder(
            side: BorderSide.none,
          ),
        ),
        mouseCursor: MaterialStatePropertyAll<MouseCursor?>(
          ${fieldValues.mouseCursor},
        ),
        visualDensity: ${fieldValues.visualDensity},
        tapTargetSize: ${fieldValues.tapTargetSize},
        animationDuration: Duration(
          seconds: ${fieldValues.animationSeconds ?? 0},
          minutes: ${fieldValues.animationMinutes ?? 0},
        ),
        enableFeedback: ${fieldValues.enableFeedback},
        alignment: ${fieldValues.alignment},
        splashFactory: NoSplash.splashFactory,
        textStyle: MaterialStatePropertyAll<TextStyle?>(
          ${fieldValues.textStyle},
        ),
      ),
      focusNode: FocusNode(),
      autofocus: ${fieldValues.autofocus ?? false},
      clipBehavior: ${fieldValues.clipBehavior ?? Clip.none},
      isSemanticButton: ${fieldValues.isSemanticButton ?? true},
      child: Text(
        ${fieldValues.text ?? ''},
      ),
    );
  ''';

  @override
  TextButtonProperties get fieldValues => (
        backgroundColor: getValueOf('backgroundColor'),
        foregroundColor: getValueOf('foregroundColor'),
        overlayColor: getValueOf('overlayColor'),
        shadowColor: getValueOf('shadowColor'),
        surfaceTintColor: getValueOf('surfaceTintColor'),
        elevation: getValueOf('elevation'),
        padding: getValueOf('padding'),
        minHeight: getValueOf('minHeight'),
        minWidth: getValueOf('minWidth'),
        maxHeight: getValueOf('maxHeight'),
        maxWidth: getValueOf('maxWidth'),
        fixedHeight: getValueOf('fixedHeight'),
        fixedWidth: getValueOf('fixedWidth'),
        iconColor: getValueOf('iconColor'),
        iconSize: getValueOf('iconSize'),
        borderColor: getValueOf('borderColor'),
        borderWidth: getValueOf('borderWidth'),
        borderStyle: getValueOf('borderStyle'),
        strokeAlign: getValueOf('strokeAlign'),
        mouseCursor: getValueOf('mouseCursor'),
        visualDensity: getValueOf('visualDensity'),
        tapTargetSize: getValueOf('tapTargetSize'),
        animationSeconds: getValueOf('animationSeconds'),
        animationMinutes: getValueOf('animationMinutes'),
        enableFeedback: getValueOf('enableFeedback'),
        alignment: getValueOf('alignment'),
        textStyle: getValueOf('textStyle'),
        autofocus: getValueOf('autofocus'),
        clipBehavior: getValueOf('clipBehavior'),
        text: getValueOf('text'),
        isSemanticButton: getValueOf('isSemanticButton'),
      );

  @override
  void registerFields() {
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
      id: "borderStyle",
      title: "Border Style",
      values: BorderStyle.values,
    );
    listField(
      id: "strokeAlign",
      title: "Stroke Align",
      values: [
        BorderSide.strokeAlignCenter,
        BorderSide.strokeAlignInside,
        BorderSide.strokeAlignOutside,
      ],
    );
    listField(
      id: "mouseCursor",
      title: "Mouse Cursor",
      values: [MouseCursor.uncontrolled, MouseCursor.defer],
    );
    listField<VisualDensity>(
      id: "visualDensity",
      title: "VisualDensity",
      values: [
        VisualDensity.adaptivePlatformDensity,
        VisualDensity.compact,
        VisualDensity.comfortable,
      ],
    );
    listField(
      id: "materialTapTargetSize",
      title: "Material Tap TargetSize",
      values: MaterialTapTargetSize.values,
    );
    intField(id: "animationSeconds", title: "Animation Seconds");
    intField(id: "animationMinutes", title: "Animation Minutes");
    booleanField(id: "enableFeedback", title: "Enable Feedback");
    alignmentField(id: "alignment", title: "Alignment");
    textStyleField(id: "textStyle", title: "Text Style");
    booleanField(id: "autofocus", title: "Autofocus");
    clipField(id: "clipBehavior", title: "Clip Behavior");
    stringField(id: "text", title: "Text of Child");
    booleanField(id: "isSemanticButton", title: "isSemantic Button");
  }
}

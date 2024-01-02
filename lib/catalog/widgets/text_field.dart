import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/border_radius_field.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/edge_insets_field.dart';
import 'package:flutter_quest/property_fields/icon_data_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';
import 'package:flutter_quest/property_fields/text_direction_field.dart';
import 'package:flutter_quest/property_fields/text_style_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class TextFieldPropertyExplorer extends StatelessWidget {
  const TextFieldPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "TextField",
      builder: (provider) {
        final iconColor =
            provider.colorField(id: "iconColor", title: "Icon Color");
        final icon = provider.iconDataField(id: "icon", title: "Icon");
        final label = provider.iconDataField(id: "label", title: "Label");
        final labelText =
            provider.stringField(id: "labelText", title: "Label Text");
        final labelStyle =
            provider.textStyleField(id: "labelStyle", title: "Label Style");
        final floatingLabelStyle = provider.textStyleField(
            id: "floatingLabelStyle", title: "Floating Label Style");
        final helperText =
            provider.stringField(id: "helperText", title: "Helper Text");
        final helperStyle =
            provider.textStyleField(id: "helperStyle", title: "Helper Style");
        final helperMaxLines =
            provider.intField(id: "helperMaxLines", title: "Helper MaxLines");
        final hintText =
            provider.stringField(id: "hintText", title: "Hint Text");
        final hintStyle =
            provider.textStyleField(id: "hintStyle", title: "Hint Style");
        final hintTextDirection = provider.textDirectionField(
            id: "hintTextDirection", title: "Hint Text Direction");
        final hintMaxLines =
            provider.intField(id: "hintMaxLines", title: "Hint Max Lines");
        final error = provider.iconDataField(id: "error", title: "Error");
        final errorText =
            provider.stringField(id: "errorText", title: "Error Text");
        final errorStyle =
            provider.textStyleField(id: "errorStyle", title: "Error Style");
        final errorMaxLines =
            provider.intField(id: "errorMaxLines", title: "Error Max Lines");
        final floatingLabelAlignment = provider.listField(
            id: "floatingLabelAlignment",
            title: "Floating Label Alignment",
            values: [
              FloatingLabelAlignment.start,
              FloatingLabelAlignment.center
            ]);
        final isCollapsed =
            provider.booleanField(id: "isCollapsed", title: "IsCollapsed");
        final isDense = provider.booleanField(id: "isDense", title: "IsDense");
        final contentPadding = provider.edgeInsetsField(
            id: "contentPadding", title: "Content Padding");
        final prefixIcon =
            provider.iconDataField(id: "prefixIcon", title: "Prefix Icon");

        final prefixMaxHeight = provider.doubleField(
            id: "prefixMaxHeight", title: "Prefix Icon Maximum Height");
        final prefixMinHeight = provider.doubleField(
            id: "prefixMinHeight", title: "Prefix Icon Minimum Height");
        final prefixMaxWidth = provider.doubleField(
            id: "prefixMaxWidth", title: "PrefixIcon Maximum Width");
        final prefixMinWidth = provider.doubleField(
            id: "prefixMinWidth", title: "PrefixIcon Minimum Width");

        final prefix = provider.iconDataField(id: "prefix", title: "Prefix");
        final prefixText =
            provider.stringField(id: "prefixText", title: "Prefix Text");
        final prefixStyle =
            provider.textStyleField(id: "prefixStyle", title: "Prefix Style");
        final prefixIconColor = provider.colorField(
            id: "prefixIconColor", title: "Prefix Icon Color");
        final suffixIcon =
            provider.iconDataField(id: "suffixIcon", title: "Suffix Icon");

        final suffixMaxHeight = provider.doubleField(
            id: "suffixMaxHeight", title: "Suffix Icon Maximum Height");
        final suffixMinHeight = provider.doubleField(
            id: "suffixMinHeight", title: "Suffix Icon Minimum Height");
        final suffixMaxWidth = provider.doubleField(
            id: "suffixMaxWidth", title: "Suffix Icon Maximum Width");
        final suffixMinWidth = provider.doubleField(
            id: "suffixMinWidth", title: "Suffix Icon Minimum Width");

        final suffixText =
            provider.stringField(id: "suffixText", title: "Suffix Text");
        final suffixStyle =
            provider.textStyleField(id: "suffixStyle", title: "Suffix Style");
        final suffixIconColor = provider.colorField(
            id: "suffixIconColor", title: "Suffix Icon Color");
        final counter = provider.iconDataField(id: "counter", title: "Counter");
        final counterText =
            provider.stringField(id: "counterText", title: "Counter Text");
        final counterStyle =
            provider.textStyleField(id: "counterStyle", title: "Counter Style");
        final filled = provider.booleanField(id: "filled", title: "Filled");
        final fillColor =
            provider.colorField(id: "fillColor", title: "Fill Color");
        final focusColor =
            provider.colorField(id: "focusColor", title: "Focus Color");
        final hoverColor =
            provider.colorField(id: "hoverColor", title: "Hover Color");

        final errorBorderColor = provider.colorField(
            id: "errorBorderColor", title: "Error Border Color");
        final errorBorderWidth = provider.doubleField(
            id: "errorBorderWidth", title: "Error Border Width");
        final errorBorderRadius = provider.borderRadiusField(
            id: "errorBorderRadius", title: "Error Border Radius");
        final errorBorderStyle = provider.listField(
            id: "errorBorderStyle",
            title: "Error Border Style",
            values: BorderStyle.values);
        final errorStrokeAlign = provider.doubleField(
            id: "errorStrokeAlign", title: "Error Stroke Align");
        final errorGapPadding = provider.doubleField(
            id: "errorGapPadding", title: "Error Gap Padding");

        final focusBorderColor = provider.colorField(
            id: "focusBorderColor", title: "Focus Border Color");
        final focusBorderWidth = provider.doubleField(
            id: "focusBorderWidth", title: "Focus Border Width");
        final focusBorderRadius = provider.borderRadiusField(
            id: "focusBorderRadius", title: "Focus Border Radius");
        final focusBorderStyle = provider.listField(
            id: "focusBorderStyle",
            title: "Focus Border Style",
            values: BorderStyle.values);
        final focusStrokeAlign = provider.doubleField(
            id: "focusStrokeAlign", title: "Focus Stroke Align");
        final focusGapPadding = provider.doubleField(
            id: "focusGapPadding", title: "Focus Gap Padding");

        final focusErrorBorderColor = provider.colorField(
            id: "focusErrorBorderColor", title: "Focus Error Border Color");
        final focusErrorBorderWidth = provider.doubleField(
            id: "focusErrorBorderWidth", title: "Focus Error Border Width");
        final focusErrorBorderRadius = provider.borderRadiusField(
            id: "focusErrorBorderRadius", title: "Focus Error Border Radius");
        final focusErrorBorderStyle = provider.listField(
            id: "focusErrorBorderStyle",
            title: "Focus Error Border Style",
            values: BorderStyle.values);
        final focusErrorStrokeAlign = provider.doubleField(
            id: "focusErrorStrokeAlign", title: "Focus Error Stroke Align");
        final focusErrorGapPadding = provider.doubleField(
            id: "focusErrorGapPadding", title: "Focus Error Gap Padding");

        final disabledBorderColor = provider.colorField(
            id: "disabledBorderColor", title: "Disabled Border Color");
        final disabledBorderWidth = provider.doubleField(
            id: "disabledBorderWidth", title: "Disabled Border Width");
        final disabledBorderRadius = provider.borderRadiusField(
            id: "disabledBorderRadius", title: "Disabled Border Radius");
        final disabledBorderStyle = provider.listField(
            id: "disabledBorderStyle",
            title: "Disabled Border Style",
            values: BorderStyle.values);
        final disabledStrokeAlign = provider.doubleField(
            id: "disabledStrokeAlign", title: "Disabled Stroke Align");
        final disabledGapPadding = provider.doubleField(
            id: "disabledGapPadding", title: "Disabled Gap Padding");

        final enabledBorderColor = provider.colorField(
            id: "enabledBorderColor", title: "Enabled Border Color");
        final enabledBorderWidth = provider.doubleField(
            id: "enabledBorderWidth", title: "Enabled Border Width");
        final enabledBorderRadius = provider.borderRadiusField(
            id: "enabledBorderRadius", title: "Enabled Border Radius");
        final enabledBorderStyle = provider.listField(
            id: "enabledBorderStyle",
            title: "Enabled Border Style",
            values: BorderStyle.values);
        final enabledStrokeAlign = provider.doubleField(
            id: "enabledStrokeAlign", title: "Enabled Stroke Align");
        final enabledGapPadding = provider.doubleField(
            id: "enabledGapPadding", title: "Enabled Gap Padding");

        final borderColor =
            provider.colorField(id: "borderColor", title: "Border Color");
        final borderWidth =
            provider.doubleField(id: "borderWidth", title: "Border Width");
        final borderRadius = provider.borderRadiusField(
            id: "borderRadius", title: "Border Radius");
        final borderStyle = provider.listField(
            id: "borderStyle",
            title: "Border Style",
            values: BorderStyle.values);
        final strokeAlign =
            provider.doubleField(id: "strokeAlign", title: "Stroke Align");
        final gapPadding =
            provider.doubleField(id: "gapPadding", title: "Gap Padding");

        final enabled = provider.booleanField(id: "enabled", title: "Enabled");
        final semanticCounterText = provider.stringField(
            id: "semanticCounterText", title: "Semantic Counter Text");
        final alignLabelWithHint = provider.booleanField(
            id: "alignLabelWithHint", title: "AlignLabel With Hint");

        final maxHeight =
            provider.doubleField(id: "maxHeight", title: "Maximum Height");
        final minHeight =
            provider.doubleField(id: "minHeight", title: "minimum Height");
        final maxWidth =
            provider.doubleField(id: "maxWidth", title: "Maximum Width");
        final minWidth =
            provider.doubleField(id: "minWidth", title: "Minimum Width");

        final keyboardType = provider.listField(
            id: "keyboardType",
            title: "Keyboard Type",
            values: TextInputType.values);
        final textInputAction = provider.listField(
            id: "textInputAction",
            title: "Text Input Action",
            values: TextInputAction.values);
        final textCapitalization = provider.listField(
            id: "textCapitalization",
            title: "Text Capitalization",
            values: TextCapitalization.values);
        final style = provider.textStyleField(id: "style", title: "Style");
        final textAlign = provider.listField(
            id: "textAlign", title: "Text Align", values: TextAlign.values);
        final textAlignVertical = provider.listField(
            id: "textAlignVertical",
            title: "TextAlign Vertical",
            values: [
              TextAlignVertical.bottom,
              TextAlignVertical.top,
              TextAlignVertical.center
            ]);
        final textDirection = provider.textDirectionField(
            id: "textDirection", title: "Text Direction");
        final readOnly =
            provider.booleanField(id: "readOnly", title: "Read Only");

        final copyToolBarOption = provider.booleanField(
            id: "copyToolBarOption", title: "Copy ToolBar Option");
        final cutToolBarOption = provider.booleanField(
            id: "cutToolBarOption", title: "Cut ToolBar Option");
        final pasteToolBarOption = provider.booleanField(
            id: "pasteToolBarOption", title: "Paste ToolBar Option");
        final selectAllToolBarOption = provider.booleanField(
            id: "selectAllToolBarOption", title: "SelectAll ToolBar Option");

        final showCursor =
            provider.booleanField(id: "showCursor", title: "Show Cursor");
        final autofocus =
            provider.booleanField(id: "autofocus", title: "Autofocus");
        final obscuringCharacter = provider.stringField(
            id: "obscuringCharacter", title: "Obscuring Character");
        final obscureText =
            provider.booleanField(id: "obscureText", title: "Obscure Text");
        final autocorrect =
            provider.booleanField(id: "autocorrect", title: "Auto Correct");
        final smartDashesType = provider.listField(
            id: "smartDashesType",
            title: "Smart Dashes Type",
            values: SmartDashesType.values);
        final smartQuotesType = provider.listField(
            id: "smartQuotesType",
            title: "Smart Quotes Type",
            values: SmartQuotesType.values);
        final enableSuggestions = provider.booleanField(
            id: "enableSuggestions", title: "Enable Suggestions");
        final maxLines =
            provider.intField(id: "maxLines", title: "Maximum Lines");
        final minLines =
            provider.intField(id: "minLines", title: "Minimum Lines");
        final expands = provider.booleanField(id: "expands", title: "Expands");
        final maxLength =
            provider.intField(id: "maxLength", title: "Maximum Length");
        final maxLengthEnforcement = provider.listField(
            id: "maxLengthEnforcement",
            title: "Maximum Length Enforcement",
            values: MaxLengthEnforcement.values);
        final enabledText =
            provider.booleanField(id: "enabledText", title: "Enabled Text");
        final cursorWidth =
            provider.doubleField(id: "cursorWidth", title: "Cursor Width");
        final cursorHeight =
            provider.doubleField(id: "cursorHeight", title: "Cursor Height");
        final cursorRadius =
            provider.doubleField(id: "cursorRadius", title: "Cursor Radius");
        final cursorOpacityAnimates = provider.booleanField(
            id: "cursorOpacityAnimates", title: "Cursor Opacity Animates");
        final cursorColor =
            provider.colorField(id: "cursorColor", title: "Cursor Color");
        final selectionHeightStyle = provider.listField(
            id: "selectionHeightStyle",
            title: "Selection Height Style",
            values: BoxHeightStyle.values);
        final selectionWidthStyle = provider.listField(
            id: "selectionWidthStyle",
            title: "Selection Width Style",
            values: BoxWidthStyle.values);
        final keyboardAppearance = provider.listField(
            id: "keyboardAppearance",
            title: "Keyboard Appearance",
            values: Brightness.values);
        final scrollPadding = provider.edgeInsetsField(
            id: "scrollPadding", title: "Scroll Padding");
        final dragStartBehavior = provider.listField(
            id: "dragStartBehavior",
            title: "Drag Start Behavior",
            values: DragStartBehavior.values);
        final enableInteractiveSelection = provider.booleanField(
            id: "enableInteractiveSelection",
            title: "Enable Interactive Selection");
        final mouseCursor = provider.listField(
            id: "mouseCursor",
            title: "Mouse Cursor",
            values: [MouseCursor.defer, MouseCursor.uncontrolled]);
        final clipBehavior =
            provider.clipField(id: "clipBehavior", title: "ClipBehavior");
        final restorationId =
            provider.stringField(id: "restorationId", title: "RestorationId");
        final scribbleEnabled = provider.booleanField(
            id: "scribbleEnabled", title: "Scribble Enabled");
        final enableIMEPersonalizedLearning = provider.booleanField(
            id: "enableIMEPersonalizedLearning",
            title: "Enable IME Personalized Learning");
        final canRequestFocus = provider.booleanField(
            id: "canRequestFocus", title: "Can Request Focus");

        return (
          widget: TextField(
            focusNode: FocusNode(),
            decoration: InputDecoration(
              icon: Icon(icon),
              iconColor: iconColor,
              label: Icon(label),
              labelText: labelText,
              labelStyle: labelStyle,
              floatingLabelStyle: floatingLabelStyle,
              helperText: helperText,
              helperStyle: helperStyle,
              helperMaxLines: helperMaxLines,
              hintText: hintText,
              hintStyle: hintStyle,
              hintTextDirection: hintTextDirection,
              hintMaxLines: hintMaxLines,
              error: Icon(error),
              errorText: errorText,
              errorStyle: errorStyle,
              errorMaxLines: errorMaxLines,
              floatingLabelAlignment: floatingLabelAlignment,
              isCollapsed: isCollapsed ?? false,
              isDense: isDense,
              contentPadding: contentPadding,
              prefixIcon: Icon(prefixIcon),
              prefixIconConstraints: BoxConstraints(
                maxHeight: prefixMaxHeight ?? double.infinity,
                minHeight: prefixMinHeight ?? 0.0,
                maxWidth: prefixMaxWidth ?? double.infinity,
                minWidth: prefixMinWidth ?? 0.0,
              ),
              prefix: Icon(prefix),
              prefixText: prefixText,
              prefixStyle: prefixStyle,
              prefixIconColor: prefixIconColor,
              suffixIcon: Icon(suffixIcon),
              suffixIconConstraints: BoxConstraints(
                maxHeight: suffixMaxHeight ?? double.infinity,
                minHeight: suffixMinHeight ?? 0.0,
                maxWidth: suffixMaxWidth ?? double.infinity,
                minWidth: suffixMinWidth ?? 0.0,
              ),
              suffixText: suffixText,
              suffixStyle: suffixStyle,
              suffixIconColor: suffixIconColor,
              counter: Icon(counter),
              counterText: counterText,
              counterStyle: counterStyle,
              filled: filled,
              fillColor: fillColor,
              focusColor: focusColor,
              hoverColor: hoverColor,
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: errorBorderColor ?? Colors.transparent,
                  width: errorBorderWidth ?? 1.0,
                  style: errorBorderStyle ?? BorderStyle.solid,
                  strokeAlign: errorStrokeAlign ?? 1.0,
                ),
                borderRadius: errorBorderRadius ?? BorderRadius.zero,
                gapPadding: errorGapPadding ?? 4.0,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: focusBorderColor ?? Colors.transparent,
                  width: focusBorderWidth ?? 1.0,
                  style: focusBorderStyle ?? BorderStyle.solid,
                  strokeAlign: focusStrokeAlign ?? 1.0,
                ),
                borderRadius: focusBorderRadius ?? BorderRadius.zero,
                gapPadding: focusGapPadding ?? 4.0,
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: focusErrorBorderColor ?? Colors.transparent,
                  width: focusErrorBorderWidth ?? 1.0,
                  style: focusErrorBorderStyle ?? BorderStyle.solid,
                  strokeAlign: focusErrorStrokeAlign ?? 1.0,
                ),
                borderRadius: focusErrorBorderRadius ?? BorderRadius.zero,
                gapPadding: focusErrorGapPadding ?? 4.0,
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: disabledBorderColor ?? Colors.transparent,
                  width: disabledBorderWidth ?? 1.0,
                  style: disabledBorderStyle ?? BorderStyle.solid,
                  strokeAlign: disabledStrokeAlign ?? 1.0,
                ),
                borderRadius: disabledBorderRadius ?? BorderRadius.zero,
                gapPadding: disabledGapPadding ?? 4.0,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: enabledBorderColor ?? Colors.transparent,
                  width: enabledBorderWidth ?? 1.0,
                  style: enabledBorderStyle ?? BorderStyle.solid,
                  strokeAlign: enabledStrokeAlign ?? 1.0,
                ),
                borderRadius: enabledBorderRadius ?? BorderRadius.zero,
                gapPadding: enabledGapPadding ?? 4.0,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor ?? Colors.transparent,
                  width: borderWidth ?? 1.0,
                  style: borderStyle ?? BorderStyle.solid,
                  strokeAlign: strokeAlign ?? 1.0,
                ),
                borderRadius: borderRadius ?? BorderRadius.zero,
                gapPadding: gapPadding ?? 4.0,
              ),
              enabled: enabled ?? true,
              semanticCounterText: semanticCounterText,
              alignLabelWithHint: alignLabelWithHint,
              constraints: BoxConstraints(
                maxHeight: maxHeight ?? double.infinity,
                minHeight: minHeight ?? 0.0,
                maxWidth: maxWidth ?? double.infinity,
                minWidth: minWidth ?? 0.0,
              ),
            ),
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            textCapitalization: textCapitalization ?? TextCapitalization.none,
            style: style,
            textAlign: textAlign ?? TextAlign.start,
            textAlignVertical: textAlignVertical,
            textDirection: textDirection,
            readOnly: readOnly ?? false,
            toolbarOptions: ToolbarOptions(
              copy: copyToolBarOption ?? false,
              cut: cutToolBarOption ?? false,
              paste: pasteToolBarOption ?? false,
              selectAll: selectAllToolBarOption ?? false,
            ),
            showCursor: showCursor,
            autofocus: autofocus ?? false,
            obscuringCharacter: obscuringCharacter ?? "*",
            obscureText: obscureText ?? false,
            autocorrect: autocorrect ?? true,
            smartDashesType: smartDashesType,
            smartQuotesType: smartQuotesType,
            enableSuggestions: enableSuggestions ?? true,
            maxLines: maxLines ?? 1,
            minLines: minLines,
            expands: expands ?? false,
            maxLength: maxLength,
            maxLengthEnforcement: maxLengthEnforcement,
            inputFormatters: const [],
            enabled: enabledText,
            cursorWidth: cursorWidth ?? 2.0,
            cursorHeight: cursorHeight,
            cursorRadius: Radius.circular(cursorRadius ?? 0.0),
            cursorOpacityAnimates: cursorOpacityAnimates,
            cursorColor: cursorColor,
            selectionHeightStyle: selectionHeightStyle ?? BoxHeightStyle.tight,
            selectionWidthStyle: selectionWidthStyle ?? BoxWidthStyle.tight,
            keyboardAppearance: keyboardAppearance,
            scrollPadding: scrollPadding ?? const EdgeInsets.all(2.0),
            dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
            enableInteractiveSelection: enableInteractiveSelection,
            mouseCursor: mouseCursor,
            clipBehavior: clipBehavior ?? Clip.none,
            restorationId: restorationId,
            scribbleEnabled: scribbleEnabled ?? true,
            enableIMEPersonalizedLearning:
                enableIMEPersonalizedLearning ?? true,
            canRequestFocus: canRequestFocus ?? true,
            magnifierConfiguration: TextMagnifierConfiguration.disabled,
          ),
          code: "TextField code goes here...",
        );
      },
    );
  }
}

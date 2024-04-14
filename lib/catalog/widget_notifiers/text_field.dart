import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_quest/core/property_provider.dart';
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

typedef TextFieldProperties = ({
  // Icon
  ValueHolder<Color?> iconColor,
  ValueHolder<IconData?> icon,

  // Label
  ValueHolder<IconData?> label,
  ValueHolder<String?> labelText,
  ValueHolder<TextStyle?> labelStyle,
  ValueHolder<TextStyle?> floatingLabelStyle,

  // Helper Text
  ValueHolder<String?> helperText,
  ValueHolder<TextStyle?> helperStyle,
  ValueHolder<int?> helperMaxLines,

  // Hint Text
  ValueHolder<String?> hintText,
  ValueHolder<TextStyle?> hintStyle,
  ValueHolder<TextDirection?> hintTextDirection,
  ValueHolder<int?> hintMaxLines,

  // Error
  ValueHolder<IconData?> error,
  ValueHolder<String?> errorText,
  ValueHolder<TextStyle?> errorStyle,
  ValueHolder<int?> errorMaxLines,

  // Floating Label Alignment
  ValueHolder<FloatingLabelAlignment?> floatingLabelAlignment,

  // Others
  ValueHolder<bool?> isCollapsed,
  ValueHolder<bool?> isDense,
  ValueHolder<EdgeInsets?> contentPadding,
  ValueHolder<IconData?> prefixIcon,
  ValueHolder<double?> prefixMaxHeight,
  ValueHolder<double?> prefixMinHeight,
  ValueHolder<double?> prefixMaxWidth,
  ValueHolder<double?> prefixMinWidth,
  ValueHolder<IconData?> prefix,
  ValueHolder<String?> prefixText,
  ValueHolder<TextStyle?> prefixStyle,
  ValueHolder<Color?> prefixIconColor,
  ValueHolder<IconData?> suffixIcon,
  ValueHolder<double?> suffixMaxHeight,
  ValueHolder<double?> suffixMinHeight,
  ValueHolder<double?> suffixMaxWidth,
  ValueHolder<double?> suffixMinWidth,
  ValueHolder<String?> suffixText,
  ValueHolder<TextStyle?> suffixStyle,
  ValueHolder<Color?> suffixIconColor,
  ValueHolder<IconData?> counter,
  ValueHolder<String?> counterText,
  ValueHolder<TextStyle?> counterStyle,
  ValueHolder<bool?> filled,
  ValueHolder<Color?> fillColor,
  ValueHolder<Color?> focusColor,
  ValueHolder<Color?> hoverColor,

  // Error Border
  ValueHolder<Color?> errorBorderColor,
  ValueHolder<double?> errorBorderWidth,
  ValueHolder<BorderRadius?> errorBorderRadius,
  ValueHolder<BorderStyle?> errorBorderStyle,
  ValueHolder<double?> errorStrokeAlign,
  ValueHolder<double?> errorGapPadding,

  // Focus Border
  ValueHolder<Color?> focusBorderColor,
  ValueHolder<double?> focusBorderWidth,
  ValueHolder<BorderRadius?> focusBorderRadius,
  ValueHolder<BorderStyle?> focusBorderStyle,
  ValueHolder<double?> focusStrokeAlign,
  ValueHolder<double?> focusGapPadding,

  // Focus Error Border
  ValueHolder<Color?> focusErrorBorderColor,
  ValueHolder<double?> focusErrorBorderWidth,
  ValueHolder<BorderRadius?> focusErrorBorderRadius,
  ValueHolder<BorderStyle?> focusErrorBorderStyle,
  ValueHolder<double?> focusErrorStrokeAlign,
  ValueHolder<double?> focusErrorGapPadding,

  // Disabled Border
  ValueHolder<Color?> disabledBorderColor,
  ValueHolder<double?> disabledBorderWidth,
  ValueHolder<BorderRadius?> disabledBorderRadius,
  ValueHolder<BorderStyle?> disabledBorderStyle,
  ValueHolder<double?> disabledStrokeAlign,
  ValueHolder<double?> disabledGapPadding,

  // Enabled Border
  ValueHolder<Color?> enabledBorderColor,
  ValueHolder<double?> enabledBorderWidth,
  ValueHolder<BorderRadius?> enabledBorderRadius,
  ValueHolder<BorderStyle?> enabledBorderStyle,
  ValueHolder<double?> enabledStrokeAlign,
  ValueHolder<double?> enabledGapPadding,

  // General Border
  ValueHolder<Color?> borderColor,
  ValueHolder<double?> borderWidth,
  ValueHolder<BorderRadius?> borderRadius,
  ValueHolder<BorderStyle?> borderStyle,
  ValueHolder<double?> strokeAlign,
  ValueHolder<double?> gapPadding,

  // Other properties
  ValueHolder<bool?> enabled,
  ValueHolder<String?> semanticCounterText,
  ValueHolder<bool?> alignLabelWithHint,
  ValueHolder<double?> maxHeight,
  ValueHolder<double?> minHeight,
  ValueHolder<double?> maxWidth,
  ValueHolder<double?> minWidth,
  ValueHolder<TextInputType?> keyboardType,
  ValueHolder<TextInputAction?> textInputAction,
  ValueHolder<TextCapitalization?> textCapitalization,
  ValueHolder<TextStyle?> style,
  ValueHolder<TextAlign?> textAlign,
  ValueHolder<TextAlignVertical?> textAlignVertical,
  ValueHolder<TextDirection?> textDirection,
  ValueHolder<bool?> readOnly,
  ValueHolder<bool?> showCursor,
  ValueHolder<bool?> autofocus,
  ValueHolder<String?> obscuringCharacter,
  ValueHolder<bool?> obscureText,
  ValueHolder<bool?> autocorrect,
  ValueHolder<SmartDashesType?> smartDashesType,
  ValueHolder<SmartQuotesType?> smartQuotesType,
  ValueHolder<bool?> enableSuggestions,
  ValueHolder<int?> maxLines,
  ValueHolder<int?> minLines,
  ValueHolder<bool?> expands,
  ValueHolder<int?> maxLength,
  ValueHolder<MaxLengthEnforcement?> maxLengthEnforcement,
  ValueHolder<bool?> enabledText,
  ValueHolder<double?> cursorWidth,
  ValueHolder<double?> cursorHeight,
  ValueHolder<double?> cursorRadius,
  ValueHolder<bool?> cursorOpacityAnimates,
  ValueHolder<Color?> cursorColor,
  ValueHolder<BoxHeightStyle?> selectionHeightStyle,
  ValueHolder<BoxWidthStyle?> selectionWidthStyle,
  ValueHolder<Brightness?> keyboardAppearance,
  ValueHolder<EdgeInsets?> scrollPadding,
  ValueHolder<DragStartBehavior?> dragStartBehavior,
  ValueHolder<bool?> enableInteractiveSelection,
  ValueHolder<MouseCursor?> mouseCursor,
  ValueHolder<Clip?> clipBehavior,
  ValueHolder<String?> restorationId,
  ValueHolder<bool?> scribbleEnabled,
  ValueHolder<bool?> enableIMEPersonalizedLearning,
  ValueHolder<bool?> canRequestFocus,
});


class TextFieldPropertiesNotifier
    extends PropertiesNotifier<TextFieldProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    // TODO: implement buildPreview
    return TextField(
      focusNode: FocusNode(),
      decoration: InputDecoration(
        icon: Icon(fieldValues.icon.isSet? fieldValues.icon.value : null,),
        iconColor:fieldValues.iconColor.isSet? fieldValues.iconColor.value : null,
        label: Icon(fieldValues.label.isSet? fieldValues.label.value : null,),
        labelText: fieldValues.labelText.isSet? fieldValues.labelText.value : null,
        labelStyle: fieldValues.labelStyle.isSet? fieldValues.labelStyle.value : null,
        floatingLabelStyle: fieldValues.floatingLabelStyle.isSet? fieldValues.floatingLabelStyle.value : null,
        helperText: fieldValues.helperText.isSet? fieldValues.helperText.value : null,
        helperStyle: fieldValues.helperStyle.isSet? fieldValues.helperStyle.value : null,
        helperMaxLines: fieldValues.helperMaxLines.isSet? fieldValues.helperMaxLines.value : null,
        hintText: fieldValues.hintText.isSet? fieldValues.hintText.value : null,
        hintStyle: fieldValues.hintStyle.isSet? fieldValues.hintStyle.value : null,
        hintTextDirection: fieldValues.hintTextDirection.isSet? fieldValues.hintTextDirection.value : null,
        hintMaxLines: fieldValues.hintMaxLines.isSet? fieldValues.hintMaxLines.value : null,
        error: Icon(fieldValues.error.isSet? fieldValues.error.value : null,),
        errorText: fieldValues.errorText.isSet? fieldValues.errorText.value : null,
        errorStyle: fieldValues.errorStyle.isSet? fieldValues.errorStyle.value : null,
        errorMaxLines: fieldValues.errorMaxLines.isSet? fieldValues.errorMaxLines.value : null,
        floatingLabelAlignment: fieldValues.floatingLabelAlignment.isSet? fieldValues.floatingLabelAlignment.value : null,
        isCollapsed: fieldValues.isCollapsed.isSet? fieldValues.isCollapsed.value! : false,
        isDense: fieldValues.isDense.isSet? fieldValues.isDense.value : null,
        contentPadding: fieldValues.contentPadding.isSet? fieldValues.contentPadding.value : null,
        prefixIcon: Icon(fieldValues.prefixIcon.isSet? fieldValues.prefixIcon.value : null,),
        prefixIconConstraints: BoxConstraints(
          maxHeight: fieldValues.prefixMaxHeight.isSet? fieldValues.prefixMaxHeight.value! : double.infinity,
          minHeight: fieldValues.prefixMinHeight.isSet? fieldValues.prefixMinHeight.value! : 0.0,
          maxWidth: fieldValues.prefixMaxWidth.isSet? fieldValues.prefixMaxWidth.value! : double.infinity,
          minWidth: fieldValues.prefixMinWidth.isSet? fieldValues.prefixMinWidth.value! : 0.0,
        ),
        prefix: Icon(fieldValues.prefix.isSet? fieldValues.prefix.value : null,),
        prefixText: fieldValues.prefixText.isSet? fieldValues.prefixText.value : null,
        prefixStyle: fieldValues.prefixStyle.isSet? fieldValues.prefixStyle.value : null,
        prefixIconColor: fieldValues.prefixIconColor.isSet? fieldValues.prefixIconColor.value : null,
        suffixIcon: Icon(fieldValues.suffixIcon.isSet? fieldValues.suffixIcon.value : null,),
        suffixIconConstraints: BoxConstraints(
          maxHeight: fieldValues.suffixMaxHeight.isSet? fieldValues.suffixMaxHeight.value! : double.infinity,
          minHeight: fieldValues.suffixMinHeight.isSet? fieldValues.suffixMinHeight.value! : 0.0,
          maxWidth: fieldValues.suffixMaxWidth.isSet? fieldValues.suffixMaxWidth.value! : double.infinity,
          minWidth: fieldValues.suffixMinWidth.isSet? fieldValues.suffixMinWidth.value! : 0.0,
        ),
        suffixText: fieldValues.suffixText.isSet? fieldValues.suffixText.value : null,
        suffixStyle: fieldValues.suffixStyle.isSet? fieldValues.suffixStyle.value : null,
        suffixIconColor: fieldValues.suffixIconColor.isSet? fieldValues.suffixIconColor.value : null,
        counter: Icon(fieldValues.counter.isSet? fieldValues.counter.value : null,),
        counterText: fieldValues.counterText.isSet? fieldValues.counterText.value : null,
        counterStyle: fieldValues.counterStyle.isSet? fieldValues.counterStyle.value : null,
        filled: fieldValues.filled.isSet? fieldValues.filled.value : null,
        fillColor: fieldValues.fillColor.isSet? fieldValues.fillColor.value : null,
        focusColor: fieldValues.focusColor.isSet? fieldValues.focusColor.value : null,
        hoverColor: fieldValues.hoverColor.isSet? fieldValues.hoverColor.value : null,
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: fieldValues.errorBorderColor.isSet? fieldValues.errorBorderColor.value! : Colors.transparent,
            width: fieldValues.errorBorderWidth.isSet? fieldValues.errorBorderWidth.value! : 1.0,
            style: fieldValues.borderStyle.isSet? fieldValues.borderStyle.value! : BorderStyle.solid,
            strokeAlign: fieldValues.strokeAlign.isSet? fieldValues.strokeAlign.value! : 1.0,
          ),
          borderRadius: fieldValues.errorBorderRadius.isSet? fieldValues.errorBorderRadius.value! : BorderRadius.zero,
          gapPadding: fieldValues.errorGapPadding.isSet? fieldValues.errorGapPadding.value! : 4.0,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: fieldValues.focusBorderColor.isSet? fieldValues.focusBorderColor.value! : Colors.transparent,
            width: fieldValues.focusBorderWidth.isSet? fieldValues.focusBorderWidth.value! : 1.0,
            style: fieldValues.focusBorderStyle.isSet? fieldValues.focusBorderStyle.value! : BorderStyle.solid,
            strokeAlign: fieldValues.focusStrokeAlign.isSet? fieldValues.focusStrokeAlign.value! : 1.0,
          ),
          borderRadius: fieldValues.focusBorderRadius.isSet? fieldValues.focusBorderRadius.value! : BorderRadius.zero,
          gapPadding: fieldValues.focusGapPadding.isSet? fieldValues.focusGapPadding.value! : 4.0,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: fieldValues.focusErrorBorderColor.isSet? fieldValues.focusErrorBorderColor.value! : Colors.transparent,
            width: fieldValues.focusErrorBorderWidth.isSet? fieldValues.focusErrorBorderWidth.value! : 1.0,
            style: fieldValues.focusErrorBorderStyle.isSet? fieldValues.focusErrorBorderStyle.value! : BorderStyle.solid,
            strokeAlign: fieldValues.focusErrorStrokeAlign.isSet? fieldValues.focusErrorStrokeAlign.value! : 1.0,
          ),
          borderRadius: fieldValues.focusErrorBorderRadius.isSet? fieldValues.focusErrorBorderRadius.value! : BorderRadius.zero,
          gapPadding: fieldValues.focusErrorGapPadding.isSet? fieldValues.focusErrorGapPadding.value! : 4.0,
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: fieldValues.disabledBorderColor.isSet? fieldValues.disabledBorderColor.value! : Colors.transparent,
            width: fieldValues.disabledBorderWidth.isSet? fieldValues.disabledBorderWidth.value! : 1.0,
            style: fieldValues.disabledBorderStyle.isSet? fieldValues.disabledBorderStyle.value! : BorderStyle.solid,
            strokeAlign: fieldValues.disabledStrokeAlign.isSet? fieldValues.disabledStrokeAlign.value! : 1.0,
          ),
          borderRadius: fieldValues.disabledBorderRadius.isSet? fieldValues.disabledBorderRadius.value! : BorderRadius.zero,
          gapPadding: fieldValues.disabledGapPadding.isSet? fieldValues.disabledGapPadding.value! : 4.0,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: fieldValues.enabledBorderColor.isSet? fieldValues.enabledBorderColor.value! : Colors.transparent,
            width: fieldValues.enabledBorderWidth.isSet? fieldValues.enabledBorderWidth.value! : 1.0,
            style: fieldValues.enabledBorderStyle.isSet? fieldValues.enabledBorderStyle.value! : BorderStyle.solid,
            strokeAlign: fieldValues.enabledStrokeAlign.isSet? fieldValues.enabledStrokeAlign.value! : 1.0,
          ),
          borderRadius: fieldValues.enabledBorderRadius.isSet? fieldValues.enabledBorderRadius.value! : BorderRadius.zero,
          gapPadding: fieldValues.enabledGapPadding.isSet? fieldValues.enabledGapPadding.value! : 4.0,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: fieldValues.borderColor.isSet? fieldValues.borderColor.value! : Colors.transparent,
            width: fieldValues.borderWidth.isSet? fieldValues.borderWidth.value! : 1.0,
            style: fieldValues.borderStyle.isSet? fieldValues.borderStyle.value! : BorderStyle.solid,
            strokeAlign: fieldValues.strokeAlign.isSet? fieldValues.strokeAlign.value! : 1.0,
          ),
          borderRadius: fieldValues.borderRadius.isSet? fieldValues.borderRadius.value! : BorderRadius.zero,
          gapPadding: fieldValues.gapPadding.isSet? fieldValues.gapPadding.value! : 4.0,
        ),
        enabled: fieldValues.enabled.isSet? fieldValues.enabled.value! : true,
        semanticCounterText: fieldValues.semanticCounterText.isSet? fieldValues.semanticCounterText.value : null,
        alignLabelWithHint: fieldValues.alignLabelWithHint.isSet? fieldValues.alignLabelWithHint.value : null,
        constraints: BoxConstraints(
          maxHeight: fieldValues.maxHeight.isSet? fieldValues.maxHeight.value! : double.infinity,
          minHeight: fieldValues.minHeight.isSet? fieldValues.minHeight.value! : 0.0,
          maxWidth: fieldValues.maxHeight.isSet? fieldValues.maxHeight.value! : double.infinity,
          minWidth: fieldValues.minWidth.isSet? fieldValues.minWidth.value! : 0.0,
        ),
      ),
      keyboardType: fieldValues.keyboardType.isSet? fieldValues.keyboardType.value : null,
      textInputAction: fieldValues.textInputAction.isSet? fieldValues.textInputAction.value : null,
      textCapitalization: fieldValues.textCapitalization.isSet? fieldValues.textCapitalization.value! : TextCapitalization.none,
      style: fieldValues.style.isSet? fieldValues.style.value : null,
      textAlign: fieldValues.textAlign.isSet? fieldValues.textAlign.value! : TextAlign.start,
      textAlignVertical: fieldValues.textAlignVertical.isSet? fieldValues.textAlignVertical.value : null,
      textDirection: fieldValues.textDirection.isSet? fieldValues.textDirection.value : null,
      readOnly: fieldValues.readOnly.isSet? fieldValues.readOnly.value! : false,
      showCursor: fieldValues.showCursor.isSet? fieldValues.showCursor.value : null,
      autofocus: fieldValues.autofocus.isSet? fieldValues.autofocus.value! : false,
      obscuringCharacter: fieldValues.obscuringCharacter.isSet? fieldValues.obscuringCharacter.value! : "*",
      obscureText: fieldValues.obscureText.isSet? fieldValues.obscureText.value! : false,
      autocorrect: fieldValues.autocorrect.isSet? fieldValues.autocorrect.value! : true,
      smartDashesType: fieldValues.smartDashesType.isSet? fieldValues.smartDashesType.value : null,
      smartQuotesType: fieldValues.smartQuotesType.isSet? fieldValues.smartQuotesType.value : null,
      enableSuggestions: fieldValues.enableSuggestions.isSet? fieldValues.enableSuggestions.value! : true,
      maxLines: fieldValues.maxLines.isSet ? fieldValues.maxLines.value : 1,
      minLines: fieldValues.minLines.isSet? fieldValues.minLines.value : null,
      expands: fieldValues.expands.isSet? fieldValues.expands.value! : false,
      maxLength: fieldValues.maxLength.isSet? fieldValues.maxLength.value : null,
      maxLengthEnforcement: fieldValues.maxLengthEnforcement.isSet? fieldValues.maxLengthEnforcement.value : null,
      inputFormatters: const [],
      enabled: fieldValues.enabledText.isSet? fieldValues.enabledText.value : null,
      cursorWidth: fieldValues.cursorWidth.isSet? fieldValues.cursorWidth.value! : 2.0,
      cursorHeight: fieldValues.cursorHeight.isSet? fieldValues.cursorHeight.value : null,
      cursorRadius: Radius.circular(fieldValues.cursorRadius.isSet? fieldValues.cursorRadius.value! : 0.0),
      cursorOpacityAnimates: fieldValues.cursorOpacityAnimates.isSet? fieldValues.cursorOpacityAnimates.value : null,
      cursorColor: fieldValues.cursorColor.isSet? fieldValues.cursorColor.value : null,
      selectionHeightStyle: fieldValues.selectionHeightStyle.isSet? fieldValues.selectionHeightStyle.value! : BoxHeightStyle.tight,
      selectionWidthStyle: fieldValues.selectionWidthStyle.isSet? fieldValues.selectionWidthStyle.value! : BoxWidthStyle.tight,
      keyboardAppearance: fieldValues.keyboardAppearance.isSet? fieldValues.keyboardAppearance.value : null,
      scrollPadding: fieldValues.scrollPadding.isSet? fieldValues.scrollPadding.value! : const EdgeInsets.all(2.0),
      dragStartBehavior: fieldValues.dragStartBehavior.isSet? fieldValues.dragStartBehavior.value! : DragStartBehavior.start,
      enableInteractiveSelection: fieldValues.enableInteractiveSelection.isSet? fieldValues.enableInteractiveSelection.value : null,
      mouseCursor: fieldValues.mouseCursor.isSet? fieldValues.mouseCursor.value : null,
      clipBehavior: fieldValues.clipBehavior.isSet? fieldValues.clipBehavior.value! : Clip.none,
      restorationId: fieldValues.restorationId.isSet? fieldValues.restorationId.value : null,
      scribbleEnabled: fieldValues.scribbleEnabled.isSet? fieldValues.scribbleEnabled.value! : true,
      enableIMEPersonalizedLearning: fieldValues.enableIMEPersonalizedLearning.isSet? fieldValues.enableIMEPersonalizedLearning.value! : true,
      canRequestFocus: fieldValues.canRequestFocus.isSet? fieldValues.canRequestFocus.value! : true,
      magnifierConfiguration: TextMagnifierConfiguration.disabled,
    );
  }

  @override
  // TODO: implement code
  String get code => '''
   TextField(
      focusNode: FocusNode(),
      decoration: InputDecoration(
        icon: Icon(${fieldValues.icon}),
        iconColor: ${fieldValues.iconColor},
        label: Icon(${fieldValues.label}),
        labelText: ${fieldValues.labelText},
        labelStyle: ${fieldValues.labelStyle},
        floatingLabelStyle: ${fieldValues.floatingLabelStyle},
        helperText: ${fieldValues.helperText},
        helperStyle: ${fieldValues.helperStyle},
        helperMaxLines: ${fieldValues.helperMaxLines},
        hintText: ${fieldValues.hintText},
        hintStyle: ${fieldValues.hintStyle},
        hintTextDirection: ${fieldValues.hintTextDirection},
        hintMaxLines: ${fieldValues.hintMaxLines},
        error: Icon(${fieldValues.error}),
        errorText: ${fieldValues.errorText},
        errorStyle: ${fieldValues.errorStyle},
        errorMaxLines: ${fieldValues.errorMaxLines},
        floatingLabelAlignment: ${fieldValues.floatingLabelAlignment},
        isCollapsed: ${fieldValues.isCollapsed} ?? false,
        isDense: ${fieldValues.isDense},
        contentPadding: ${fieldValues.contentPadding},
        prefixIcon: Icon(${fieldValues.prefixIcon}),
        prefixIconConstraints: BoxConstraints(
          maxHeight: ${fieldValues.prefixMaxHeight} ?? double.infinity,
          minHeight: ${fieldValues.prefixMinHeight} ?? 0.0,
          maxWidth: ${fieldValues.prefixMaxWidth} ?? double.infinity,
          minWidth: ${fieldValues.prefixMinWidth} ?? 0.0,
        ),
        prefix: Icon(${fieldValues.prefix}),
        prefixText: ${fieldValues.prefixText},
        prefixStyle: ${fieldValues.prefixStyle},
        prefixIconColor: ${fieldValues.prefixIconColor},
        suffixIcon: Icon(${fieldValues.suffixIcon}),
        suffixIconConstraints: BoxConstraints(
          maxHeight: ${fieldValues.suffixMaxHeight} ?? double.infinity,
          minHeight: ${fieldValues.suffixMinHeight} ?? 0.0,
          maxWidth: ${fieldValues.suffixMaxWidth} ?? double.infinity,
          minWidth: ${fieldValues.suffixMinWidth} ?? 0.0,
        ),
        suffixText: ${fieldValues.suffixText},
        suffixStyle: ${fieldValues.suffixStyle},
        suffixIconColor: ${fieldValues.suffixIconColor},
        counter: Icon(${fieldValues.counter}),
        counterText: ${fieldValues.counterText},
        counterStyle: ${fieldValues.counterStyle},
        filled: ${fieldValues.filled},
        fillColor: ${fieldValues.fillColor},
        focusColor: ${fieldValues.focusColor},
        hoverColor: ${fieldValues.hoverColor},
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ${fieldValues.errorBorderColor} ?? Colors.transparent,
            width: ${fieldValues.errorBorderWidth} ?? 1.0,
            style: ${fieldValues.errorBorderStyle} ?? BorderStyle.solid,
            strokeAlign: ${fieldValues.errorStrokeAlign} ?? 1.0,
          ),
          borderRadius: ${fieldValues.errorBorderRadius} ?? BorderRadius.zero,
          gapPadding: ${fieldValues.errorGapPadding} ?? 4.0,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ${fieldValues.focusBorderColor} ?? Colors.transparent,
            width: ${fieldValues.focusBorderWidth} ?? 1.0,
            style: ${fieldValues.focusBorderStyle} ?? BorderStyle.solid,
            strokeAlign: ${fieldValues.focusStrokeAlign} ?? 1.0,
          ),
          borderRadius: ${fieldValues.focusBorderRadius} ?? BorderRadius.zero,
          gapPadding: ${fieldValues.focusGapPadding} ?? 4.0,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ${fieldValues.focusErrorBorderColor} ?? Colors.transparent,
            width: ${fieldValues.focusErrorBorderWidth} ?? 1.0,
            style: ${fieldValues.focusErrorBorderStyle} ?? BorderStyle.solid,
            strokeAlign: ${fieldValues.focusErrorStrokeAlign} ?? 1.0,
          ),
          borderRadius: ${fieldValues.focusErrorBorderRadius} ?? BorderRadius.zero,
          gapPadding: ${fieldValues.focusErrorGapPadding} ?? 4.0,
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ${fieldValues.disabledBorderColor} ?? Colors.transparent,
            width: ${fieldValues.disabledBorderWidth} ?? 1.0,
            style: ${fieldValues.disabledBorderStyle} ?? BorderStyle.solid,
            strokeAlign: ${fieldValues.disabledStrokeAlign} ?? 1.0,
          ),
          borderRadius: ${fieldValues.disabledBorderRadius} ?? BorderRadius.zero,
          gapPadding: ${fieldValues.disabledGapPadding} ?? 4.0,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ${fieldValues.enabledBorderColor} ?? Colors.transparent,
            width: ${fieldValues.enabledBorderWidth} ?? 1.0,
            style: ${fieldValues.enabledBorderStyle} ?? BorderStyle.solid,
            strokeAlign: ${fieldValues.enabledStrokeAlign} ?? 1.0,
          ),
          borderRadius: ${fieldValues.enabledBorderRadius} ?? BorderRadius.zero,
          gapPadding: ${fieldValues.enabledGapPadding} ?? 4.0,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: ${fieldValues.borderColor} ?? Colors.transparent,
            width: ${fieldValues.borderWidth} ?? 1.0,
            style: ${fieldValues.borderStyle} ?? BorderStyle.solid,
            strokeAlign: ${fieldValues.strokeAlign} ?? 1.0,
          ),
          borderRadius: ${fieldValues.borderRadius} ?? BorderRadius.zero,
          gapPadding: ${fieldValues.gapPadding} ?? 4.0,
        ),
        enabled: ${fieldValues.enabled} ?? true,
        semanticCounterText: ${fieldValues.semanticCounterText},
        alignLabelWithHint: ${fieldValues.alignLabelWithHint},
        constraints: BoxConstraints(
          maxHeight: ${fieldValues.maxHeight} ?? double.infinity,
          minHeight: ${fieldValues.minHeight} ?? 0.0,
          maxWidth: ${fieldValues.maxWidth} ?? double.infinity,
          minWidth: ${fieldValues.minWidth} ?? 0.0,
        ),
      ),
      keyboardType: ${fieldValues.keyboardType},
      textInputAction: ${fieldValues.textInputAction},
      textCapitalization:
          ${fieldValues.textCapitalization} ?? TextCapitalization.none,
      style: ${fieldValues.style},
      textAlign: ${fieldValues.textAlign} ?? TextAlign.start,
      textAlignVertical: ${fieldValues.textAlignVertical},
      textDirection: ${fieldValues.textDirection},
      readOnly: ${fieldValues.readOnly} ?? false,
      showCursor: ${fieldValues.showCursor},
      autofocus: ${fieldValues.autofocus} ?? false,
      obscuringCharacter: ${fieldValues.obscuringCharacter} ?? "*",
      obscureText: ${fieldValues.obscureText} ?? false,
      autocorrect: ${fieldValues.autocorrect} ?? true,
      smartDashesType: ${fieldValues.smartDashesType},
      smartQuotesType: ${fieldValues.smartQuotesType},
      enableSuggestions: ${fieldValues.enableSuggestions} ?? true,
      maxLines: ${fieldValues.maxLines} ?? 1,
      minLines: ${fieldValues.minLines},
      expands: ${fieldValues.expands} ?? false,
      maxLength: ${fieldValues.maxLength},
      maxLengthEnforcement: ${fieldValues.maxLengthEnforcement},
      inputFormatters: const [],
      enabled: ${fieldValues.enabledText},
      cursorWidth: ${fieldValues.cursorWidth} ?? 2.0,
      cursorHeight: ${fieldValues.cursorHeight},
      cursorRadius: Radius.circular(${fieldValues.cursorRadius} ?? 0.0),
      cursorOpacityAnimates: ${fieldValues.cursorOpacityAnimates},
      cursorColor: ${fieldValues.cursorColor},
      selectionHeightStyle:
          ${fieldValues.selectionHeightStyle} ?? BoxHeightStyle.tight,
      selectionWidthStyle:
          ${fieldValues.selectionWidthStyle} ?? BoxWidthStyle.tight,
      keyboardAppearance: ${fieldValues.keyboardAppearance},
      scrollPadding: ${fieldValues.scrollPadding} ?? const EdgeInsets.all(2.0),
      dragStartBehavior:
          ${fieldValues.dragStartBehavior} ?? DragStartBehavior.start,
      enableInteractiveSelection: ${fieldValues.enableInteractiveSelection},
      mouseCursor: ${fieldValues.mouseCursor},
      clipBehavior: ${fieldValues.clipBehavior} ?? Clip.none,
      restorationId: ${fieldValues.restorationId},
      scribbleEnabled: ${fieldValues.scribbleEnabled} ?? true,
      enableIMEPersonalizedLearning:
          ${fieldValues.enableIMEPersonalizedLearning} ?? true,
      canRequestFocus: ${fieldValues.canRequestFocus} ?? true,
      magnifierConfiguration: TextMagnifierConfiguration.disabled,
    );
  ''';

  @override
  TextFieldProperties get fieldValues => (
        // Icon
        iconColor: getValueOf('iconColor'),
        icon: getValueOf('icon'),

        // Label
        label: getValueOf('label'),
        labelText: getValueOf('labelText'),
        labelStyle: getValueOf('labelStyle'),
        floatingLabelStyle: getValueOf('floatingLabelStyle'),

        // Helper Text
        helperText: getValueOf('helperText'),
        helperStyle: getValueOf('helperStyle'),
        helperMaxLines: getValueOf('helperMaxLines'),

        // Hint Text
        hintText: getValueOf('hintText'),
        hintStyle: getValueOf('hintStyle'),
        hintTextDirection: getValueOf('hintTextDirection'),
        hintMaxLines: getValueOf('hintMaxLines'),

        // Error
        error: getValueOf('error'),
        errorText: getValueOf('errorText'),
        errorStyle: getValueOf('errorStyle'),
        errorMaxLines: getValueOf('errorMaxLines'),

        // Floating Label Alignment
        floatingLabelAlignment: getValueOf('floatingLabelAlignment'),

        // Others
        isCollapsed: getValueOf('isCollapsed'),
        isDense: getValueOf('isDense'),
        contentPadding: getValueOf('contentPadding'),
        prefixIcon: getValueOf('prefixIcon'),
        prefixMaxHeight: getValueOf('prefixMaxHeight'),
        prefixMinHeight: getValueOf('prefixMinHeight'),
        prefixMaxWidth: getValueOf('prefixMaxWidth'),
        prefixMinWidth: getValueOf('prefixMinWidth'),
        prefix: getValueOf('prefix'),
        prefixText: getValueOf('prefixText'),
        prefixStyle: getValueOf('prefixStyle'),
        prefixIconColor: getValueOf('prefixIconColor'),
        suffixIcon: getValueOf('suffixIcon'),
        suffixMaxHeight: getValueOf('suffixMaxHeight'),
        suffixMinHeight: getValueOf('suffixMinHeight'),
        suffixMaxWidth: getValueOf('suffixMaxWidth'),
        suffixMinWidth: getValueOf('suffixMinWidth'),
        suffixText: getValueOf('suffixText'),
        suffixStyle: getValueOf('suffixStyle'),
        suffixIconColor: getValueOf('suffixIconColor'),
        counter: getValueOf('counter'),
        counterText: getValueOf('counterText'),
        counterStyle: getValueOf('counterStyle'),
        filled: getValueOf('filled'),
        fillColor: getValueOf('fillColor'),
        focusColor: getValueOf('focusColor'),
        hoverColor: getValueOf('hoverColor'),

        // Error Border
        errorBorderColor: getValueOf('errorBorderColor'),
        errorBorderWidth: getValueOf('errorBorderWidth'),
        errorBorderRadius: getValueOf('errorBorderRadius'),
        errorBorderStyle: getValueOf('errorBorderStyle'),
        errorStrokeAlign: getValueOf('errorStrokeAlign'),
        errorGapPadding: getValueOf('errorGapPadding'),

        // Focus Border
        focusBorderColor: getValueOf('focusBorderColor'),
        focusBorderWidth: getValueOf('focusBorderWidth'),
        focusBorderRadius: getValueOf('focusBorderRadius'),
        focusBorderStyle: getValueOf('focusBorderStyle'),
        focusStrokeAlign: getValueOf('focusStrokeAlign'),
        focusGapPadding: getValueOf('focusGapPadding'),

        // Focus Error Border
        focusErrorBorderColor: getValueOf('focusErrorBorderColor'),
        focusErrorBorderWidth: getValueOf('focusErrorBorderWidth'),
        focusErrorBorderRadius: getValueOf('focusErrorBorderRadius'),
        focusErrorBorderStyle: getValueOf('focusErrorBorderStyle'),
        focusErrorStrokeAlign: getValueOf('focusErrorStrokeAlign'),
        focusErrorGapPadding: getValueOf('focusErrorGapPadding'),

        // Disabled Border
        disabledBorderColor: getValueOf('disabledBorderColor'),
        disabledBorderWidth: getValueOf('disabledBorderWidth'),
        disabledBorderRadius: getValueOf('disabledBorderRadius'),
        disabledBorderStyle: getValueOf('disabledBorderStyle'),
        disabledStrokeAlign: getValueOf('disabledStrokeAlign'),
        disabledGapPadding: getValueOf('disabledGapPadding'),

        // Enabled Border
        enabledBorderColor: getValueOf('enabledBorderColor'),
        enabledBorderWidth: getValueOf('enabledBorderWidth'),
        enabledBorderRadius: getValueOf('enabledBorderRadius'),
        enabledBorderStyle: getValueOf('enabledBorderStyle'),
        enabledStrokeAlign: getValueOf('enabledStrokeAlign'),
        enabledGapPadding: getValueOf('enabledGapPadding'),

        // General Border
        borderColor: getValueOf('borderColor'),
        borderWidth: getValueOf('borderWidth'),
        borderRadius: getValueOf('borderRadius'),
        borderStyle: getValueOf('borderStyle'),
        strokeAlign: getValueOf('strokeAlign'),
        gapPadding: getValueOf('gapPadding'),

        // Other properties
        enabled: getValueOf('enabled'),
        semanticCounterText: getValueOf('semanticCounterText'),
        alignLabelWithHint: getValueOf('alignLabelWithHint'),
        maxHeight: getValueOf('maxHeight'),
        minHeight: getValueOf('minHeight'),
        maxWidth: getValueOf('maxWidth'),
        minWidth: getValueOf('minWidth'),
        keyboardType: getValueOf('keyboardType'),
        textInputAction: getValueOf('textInputAction'),
        textCapitalization: getValueOf('textCapitalization'),
        style: getValueOf('style'),
        textAlign: getValueOf('textAlign'),
        textAlignVertical: getValueOf('textAlignVertical'),
        textDirection: getValueOf('textDirection'),
        readOnly: getValueOf('readOnly'),
        showCursor: getValueOf('showCursor'),
        autofocus: getValueOf('autofocus'),
        obscuringCharacter: getValueOf('obscuringCharacter'),
        obscureText: getValueOf('obscureText'),
        autocorrect: getValueOf('autocorrect'),
        smartDashesType: getValueOf('smartDashesType'),
        smartQuotesType: getValueOf('smartQuotesType'),
        enableSuggestions: getValueOf('enableSuggestions'),
        maxLines: getValueOf('maxLines'),
        minLines: getValueOf('minLines'),
        expands: getValueOf('expands'),
        maxLength: getValueOf('maxLength'),
        maxLengthEnforcement: getValueOf('maxLengthEnforcement'),
        enabledText: getValueOf('enabledText'),
        cursorWidth: getValueOf('cursorWidth'),
        cursorHeight: getValueOf('cursorHeight'),
        cursorRadius: getValueOf('cursorRadius'),
        cursorOpacityAnimates: getValueOf('cursorOpacityAnimates'),
        cursorColor: getValueOf('cursorColor'),
        selectionHeightStyle: getValueOf('selectionHeightStyle'),
        selectionWidthStyle: getValueOf('selectionWidthStyle'),
        keyboardAppearance: getValueOf('keyboardAppearance'),
        scrollPadding: getValueOf('scrollPadding'),
        dragStartBehavior: getValueOf('dragStartBehavior'),
        enableInteractiveSelection: getValueOf('enableInteractiveSelection'),
        mouseCursor: getValueOf('mouseCursor'),
        clipBehavior: getValueOf('clipBehavior'),
        restorationId: getValueOf('restorationId'),
        scribbleEnabled: getValueOf('scribbleEnabled'),
        enableIMEPersonalizedLearning:
            getValueOf('enableIMEPersonalizedLearning'),
        canRequestFocus: getValueOf('canRequestFocus'),
      );

  @override
  void registerFields() {
    // Icon
    colorField(id: "iconColor", title: "Icon Color");
    iconDataField(id: "icon", title: "Icon");

    // Label
    iconDataField(id: "label", title: "Label");
    stringField(id: "labelText", title: "Label Text");
    iconDataField(id: "labelStyle", title: "Label Style");
    iconDataField(id: "floatingLabelStyle", title: "Floating Label Style");

    // Helper Text
    stringField(id: "helperText", title: "Helper Text");
    iconDataField(id: "helperStyle", title: "Helper Style");
    intField(id: "helperMaxLines", title: "Helper MaxLines");

    // Hint Text
    stringField(id: "hintText", title: "Hint Text");
    iconDataField(id: "hintStyle", title: "Hint Style");
    textDirectionField(id: "hintTextDirection", title: "Hint Text Direction");
    intField(id: "hintMaxLines", title: "Hint Max Lines");

    // Error
    iconDataField(id: "error", title: "Error");
    stringField(id: "errorText", title: "Error Text");
    iconDataField(id: "errorStyle", title: "Error Style");
    intField(id: "errorMaxLines", title: "Error Max Lines");

    // Floating Label Alignment
    listField(
      id: "floatingLabelAlignment",
      title: "Floating Label Alignment",
      values: [FloatingLabelAlignment.start, FloatingLabelAlignment.center],
    );

    // Others
    booleanField(id: "isCollapsed", title: "IsCollapsed");
    booleanField(id: "isDense", title: "IsDense");
    edgeInsetsField(id: "contentPadding", title: "Content Padding");
    iconDataField(id: "prefixIcon", title: "Prefix Icon");

    doubleField(id: "prefixMaxHeight", title: "Prefix Icon Maximum Height");
    doubleField(id: "prefixMinHeight", title: "Prefix Icon Minimum Height");
    doubleField(id: "prefixMaxWidth", title: "PrefixIcon Maximum Width");
    doubleField(id: "prefixMinWidth", title: "PrefixIcon Minimum Width");

    iconDataField(id: "prefix", title: "Prefix");
    stringField(id: "prefixText", title: "Prefix Text");
    iconDataField(id: "prefixStyle", title: "Prefix Style");
    colorField(id: "prefixIconColor", title: "Prefix Icon Color");

    iconDataField(id: "suffixIcon", title: "Suffix Icon");

    doubleField(id: "suffixMaxHeight", title: "Suffix Icon Maximum Height");
    doubleField(id: "suffixMinHeight", title: "Suffix Icon Minimum Height");
    doubleField(id: "suffixMaxWidth", title: "Suffix Icon Maximum Width");
    doubleField(id: "suffixMinWidth", title: "Suffix Icon Minimum Width");

    stringField(id: "suffixText", title: "Suffix Text");
    iconDataField(id: "suffixStyle", title: "Suffix Style");
    colorField(id: "suffixIconColor", title: "Suffix Icon Color");

    iconDataField(id: "counter", title: "Counter");
    stringField(id: "counterText", title: "Counter Text");
    iconDataField(id: "counterStyle", title: "Counter Style");
    booleanField(id: "filled", title: "Filled");
    colorField(id: "fillColor", title: "Fill Color");
    colorField(id: "focusColor", title: "Focus Color");
    colorField(id: "hoverColor", title: "Hover Color");

    // Error Border
    colorField(id: "errorBorderColor", title: "Error Border Color");
    doubleField(id: "errorBorderWidth", title: "Error Border Width");
    borderRadiusField(id: "errorBorderRadius", title: "Error Border Radius");
    listField(
      id: "errorBorderStyle",
      title: "Error Border Style",
      values: BorderStyle.values,
    );
    doubleField(id: "errorStrokeAlign", title: "Error Stroke Align");
    doubleField(id: "errorGapPadding", title: "Error Gap Padding");

    // Focus Border
    colorField(id: "focusBorderColor", title: "Focus Border Color");
    doubleField(id: "focusBorderWidth", title: "Focus Border Width");
    borderRadiusField(id: "focusBorderRadius", title: "Focus Border Radius");
    listField(
      id: "focusBorderStyle",
      title: "Focus Border Style",
      values: BorderStyle.values,
    );
    doubleField(id: "focusStrokeAlign", title: "Focus Stroke Align");
    doubleField(id: "focusGapPadding", title: "Focus Gap Padding");

    // Focus Error Border
    colorField(id: "focusErrorBorderColor", title: "Focus Error Border Color");
    doubleField(id: "focusErrorBorderWidth", title: "Focus Error Border Width");
    borderRadiusField(
      id: "focusErrorBorderRadius",
      title: "Focus Error Border Radius",
    );
    listField(
      id: "focusErrorBorderStyle",
      title: "Focus Error Border Style",
      values: BorderStyle.values,
    );
    doubleField(
      id: "focusErrorStrokeAlign",
      title: "Focus Error Stroke Align",
    );
    doubleField(id: "focusErrorGapPadding", title: "Focus Error Gap Padding");

    // Disabled Border
    colorField(id: "disabledBorderColor", title: "Disabled Border Color");
    doubleField(id: "disabledBorderWidth", title: "Disabled Border Width");
    borderRadiusField(
      id: "disabledBorderRadius",
      title: "Disabled Border Radius",
    );
    listField(
      id: "disabledBorderStyle",
      title: "Disabled Border Style",
      values: BorderStyle.values,
    );
    doubleField(id: "disabledStrokeAlign", title: "Disabled Stroke Align");
    doubleField(id: "disabledGapPadding", title: "Disabled Gap Padding");

    // Enabled Border
    colorField(id: "enabledBorderColor", title: "Enabled Border Color");
    doubleField(id: "enabledBorderWidth", title: "Enabled Border Width");
    borderRadiusField(
      id: "enabledBorderRadius",
      title: "Enabled Border Radius",
    );
    listField(
      id: "enabledBorderStyle",
      title: "Enabled Border Style",
      values: BorderStyle.values,
    );
    doubleField(id: "enabledStrokeAlign", title: "Enabled Stroke Align");
    doubleField(id: "enabledGapPadding", title: "Enabled Gap Padding");

    // General Border
    colorField(id: "borderColor", title: "Border Color");
    doubleField(id: "borderWidth", title: "Border Width");
    borderRadiusField(id: "borderRadius", title: "Border Radius");
    listField(
      id: "borderStyle",
      title: "Border Style",
      values: BorderStyle.values,
    );
    doubleField(id: "strokeAlign", title: "Stroke Align");
    doubleField(id: "gapPadding", title: "Gap Padding");

    booleanField(id: "enabled", title: "Enabled");
    stringField(id: "semanticCounterText", title: "Semantic Counter Text");
    booleanField(id: "alignLabelWithHint", title: "Align Label With Hint");
    doubleField(id: "maxHeight", title: "Max Height");
    doubleField(id: "minHeight", title: "Min Height");
    doubleField(id: "maxWidth", title: "Max Width");
    doubleField(id: "minWidth", title: "Min Width");
    listField(
        id: "keyboardType",
        title: "Keyboard Type",
        values: TextInputType.values);
    listField(
        id: "textInputAction",
        title: "Text Input Action",
        values: TextInputAction.values);
    listField(
      id: "textCapitalization",
      title: "Text Capitalization",
      values: TextCapitalization.values,
    );
    iconDataField(id: "style", title: "Style");
    listField(id: "textAlign", title: "Text Align", values: TextAlign.values);
    listField(
      id: "textAlignVertical",
      title: "Text Align Vertical",
      values: [
        TextAlignVertical.bottom,
        TextAlignVertical.top,
        TextAlignVertical.center
      ],
    );
    textDirectionField(id: "textDirection", title: "Text Direction");
    booleanField(id: "readOnly", title: "Read Only");
    booleanField(id: "showCursor", title: "Show Cursor");
    booleanField(id: "autofocus", title: "Autofocus");
    stringField(id: "obscuringCharacter", title: "Obscuring Character");
    booleanField(id: "obscureText", title: "Obscure Text");
    booleanField(id: "autocorrect", title: "Autocorrect");
    listField(
        id: "smartDashesType",
        title: "Smart Dashes Type",
        values: SmartDashesType.values);
    listField(
        id: "smartQuotesType",
        title: "Smart Quotes Type",
        values: SmartQuotesType.values);
    booleanField(id: "enableSuggestions", title: "Enable Suggestions");
    intField(id: "maxLines", title: "Max Lines");
    intField(id: "minLines", title: "Min Lines");
    booleanField(id: "expands", title: "Expands");
    intField(id: "maxLength", title: "Max Length");
    listField(
        id: "maxLengthEnforcement",
        title: "Max Length Enforcement",
        values: MaxLengthEnforcement.values);
    booleanField(id: "enabledText", title: "Enabled Text");
    doubleField(id: "cursorWidth", title: "Cursor Width");
    doubleField(id: "cursorHeight", title: "Cursor Height");
    doubleField(id: "cursorRadius", title: "Cursor Radius");
    booleanField(id: "cursorOpacityAnimates", title: "Cursor Opacity Animates");
    colorField(id: "cursorColor", title: "Cursor Color");
    listField(
        id: "selectionHeightStyle",
        title: "Selection Height Style",
        values: BoxHeightStyle.values);
    listField(
        id: "selectionWidthStyle",
        title: "Selection Width Style",
        values: BoxWidthStyle.values);
    listField(
      id: "keyboardAppearance",
      title: "Keyboard Appearance",
      values: Brightness.values,
    );
    edgeInsetsField(id: "scrollPadding", title: "Scroll Padding");
    listField(
        id: "dragStartBehavior",
        title: "Drag Start Behavior",
        values: Brightness.values);
    booleanField(
      id: "enableInteractiveSelection",
      title: "Enable Interactive Selection",
    );
    listField(
      id: "mouseCursor",
      title: "Mouse Cursor",
      values: [
        MouseCursor.defer,
        MouseCursor.uncontrolled,
      ],
    );
    clipField(id: "clipBehavior", title: "Clip Behavior");
    stringField(id: "restorationId", title: "Restoration Id");
    booleanField(id: "scribbleEnabled", title: "Scribble Enabled");
    booleanField(
      id: "enableIMEPersonalizedLearning",
      title: "Enable IME Personalized Learning",
    );
    booleanField(id: "canRequestFocus", title: "Can Request Focus");
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';
import 'package:flutter_quest/property_fields/text_direction_field.dart';
import 'package:flutter_quest/property_fields/text_style_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class TextPropertyExplorer extends StatelessWidget {
  const TextPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Text",
      builder: (provider) {
        final data = provider.stringField(id: "data", title: "Write Text");
        final style = provider.textStyleField(id: "style", title: "Text Style");
        final fontFamily =
            provider.stringField(id: "fontFamily", title: "fontFamily");
        final height = provider.doubleField(id: "height", title: "height");
        final leadingDistribution = provider.listField(
            id: "leadingDistribution",
            title: "leadingDistribution",
            values: TextLeadingDistribution.values);
        final leading = provider.doubleField(id: "leading", title: "leading");
        final fontWeight = provider.listField(
            id: "fontWeight", title: "fontWeight", values: FontWeight.values);
        final fontStyle = provider.listField(
            id: "fontStyle", title: "fontStyle", values: FontStyle.values);
        final forceStrutHeight = provider.booleanField(
            id: "forceStrutHeight", title: "forceStrutHeight");
        final debugLabel =
            provider.stringField(id: "debugLabel", title: "debugLabel");
        final package = provider.stringField(id: "package", title: "Package");
        final textAlign = provider.listField(
            id: "textAlign", title: "textAlign", values: TextAlign.values);
        final textDirection = provider.textDirectionField(
            id: "textDirection", title: "Text Direction");
        final locale =
            provider.stringField(id: "locale", title: "Locale String");
        final softWrap =
            provider.booleanField(id: "softWrap", title: "softWrap");
        final overflow = provider.listField(
            id: "overflow", title: "overflow", values: TextOverflow.values);
        final textScaleFactor = provider.doubleField(
            id: "textScaleFactor", title: "textScaleFactor");
        final maxLines = provider.intField(id: "maxLines", title: "maxLines");
        final semanticsLabel =
            provider.stringField(id: "semanticsLabel", title: "semanticsLabel");
        final textWidthBasis = provider.listField(
            id: "textWidthBasis",
            title: "textWidthBasis",
            values: TextWidthBasis.values);
        final selectionColor =
            provider.colorField(id: "selectionColor", title: "selectionColor");

        return (
          widget: Text(
            data ?? "",
            style: style,
            strutStyle: StrutStyle(
              fontFamily: fontFamily,
              height: height,
              leadingDistribution: leadingDistribution,
              leading: leading,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              forceStrutHeight: forceStrutHeight,
              debugLabel: debugLabel,
              package: package,
            ),
            textAlign: textAlign,
            textDirection: textDirection,
            locale: Locale(locale ?? " "),
            softWrap: softWrap,
            overflow: overflow,
            textScaleFactor: textScaleFactor,
            maxLines: maxLines,
            semanticsLabel: semanticsLabel,
            textWidthBasis: textWidthBasis,
            textHeightBehavior: const TextHeightBehavior(),
            selectionColor: selectionColor,
          ),
          code: "Text code goes here...",
        );
      },
    );
  }
}

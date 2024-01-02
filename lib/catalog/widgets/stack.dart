import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/alignment_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/text_direction_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class StackPropertyExplorer extends StatelessWidget {
  const StackPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Stack",
      builder: (provider) {
        final alignment =
            provider.alignmentField(id: "alignment", title: "Alignment");
        final textDirection = provider.textDirectionField(
            id: "Text Direction", title: "textDirection");
        final fit = provider.listField(
            id: "fit", title: "Fit", values: StackFit.values);
        final clipBehavior = provider.listField(
            id: "clipBehavior", title: "ClipBehavior", values: Clip.values);

        return (
          widget: Stack(
            alignment: alignment ?? Alignment.topLeft,
            textDirection: textDirection,
            fit: fit ?? StackFit.loose,
            clipBehavior: clipBehavior ?? Clip.hardEdge,
            children: [],
          ),
          code: "Stack code goes here...",
        );
      },
    );
  }
}

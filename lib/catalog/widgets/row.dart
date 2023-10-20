import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/cross_axis_alignemnt_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/main_axis_alignment_field.dart';
import 'package:flutter_quest/property_fields/main_axis_size_field.dart';
import 'package:flutter_quest/property_fields/text_direction_field.dart';
import 'package:flutter_quest/property_fields/vertical_direction_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class RowPropertyExplorer extends StatelessWidget {
  const RowPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Row",
      builder: (provider) {

        final mainAxisAlignment = provider.mainAxisAlignmentField(id: "mainAxisAlignment", title: "Main Axis Alignment");
        final mainAxisSize = provider.mainAxisSizeField(id: "mainAxisSize", title: "Main Axis Size");
        final crossAxisAlignment = provider.crossAxisAlignemntField(id: "crossAxisAlignment", title: "Cross Axis Alignment");
        final textDirection = provider.textDirectionField(id: "textDirection", title: "Text Direction");
        final verticalDirection = provider.verticalDirectionField(id: "verticalDirection", title: "Vertical Direction");
        final textBaseLine = provider.listField<TextBaseline>(id: "textBaseLine", title: "TextBaseLine", values: TextBaseline.values);

        return Row(
          mainAxisAlignment: mainAxisAlignment??MainAxisAlignment.start,
          mainAxisSize: mainAxisSize??MainAxisSize.max,
          crossAxisAlignment: crossAxisAlignment??CrossAxisAlignment.center,
          textDirection: textDirection,
          verticalDirection: verticalDirection??VerticalDirection.down,
          textBaseline: textBaseLine,
          children: [],
        );
      },
    );
  }
}

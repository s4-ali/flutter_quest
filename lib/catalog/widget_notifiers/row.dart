import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/cross_axis_alignemnt_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/main_axis_alignment_field.dart';
import 'package:flutter_quest/property_fields/main_axis_size_field.dart';
import 'package:flutter_quest/property_fields/text_direction_field.dart';
import 'package:flutter_quest/property_fields/vertical_direction_field.dart';

typedef RowProperties = ({
  ValueHolder<MainAxisAlignment?> mainAxisAlignment,
  ValueHolder<MainAxisSize?> mainAxisSize,
  ValueHolder<CrossAxisAlignment?> crossAxisAlignment,
  ValueHolder<TextDirection?> textDirection,
  ValueHolder<VerticalDirection?> verticalDirection,
  ValueHolder<TextBaseline?> textBaseLine,
});

class RowPropertiesNotifier extends PropertiesNotifier<RowProperties> {
  @override
  Widget buildPreview(BuildContext context) {
     return Row(
      mainAxisAlignment: fieldValues.mainAxisAlignment.isSet? fieldValues.mainAxisAlignment.value! :  MainAxisAlignment.start,
      mainAxisSize: fieldValues.mainAxisSize.isSet? fieldValues.mainAxisSize.value! : MainAxisSize.max,
      crossAxisAlignment:fieldValues.crossAxisAlignment.isSet? fieldValues.crossAxisAlignment.value! : CrossAxisAlignment.center,
      textDirection: fieldValues.textDirection.isSet? fieldValues.textDirection.value : null,
      verticalDirection:fieldValues.verticalDirection.isSet? fieldValues.verticalDirection.value! : VerticalDirection.down,
      textBaseline: fieldValues.textBaseLine.isSet? fieldValues.textBaseLine.value : null,
      children: const [],
    );
  }

  @override
  String get code => '''
   Row(
      mainAxisAlignment: ${fieldValues.mainAxisAlignment ?? MainAxisAlignment.start},
      mainAxisSize: ${fieldValues.mainAxisSize ?? MainAxisSize.max},
      crossAxisAlignment: ${fieldValues.crossAxisAlignment ?? CrossAxisAlignment.center},
      textDirection: ${fieldValues.textDirection},
      verticalDirection: ${fieldValues.verticalDirection ?? VerticalDirection.down},
      textBaseline: ${fieldValues.textBaseLine},
      children: [],
    );
  ''';

  @override
  RowProperties get fieldValues => (
        mainAxisAlignment: getValueOf('mainAxisAlignment'),
        mainAxisSize: getValueOf('mainAxisSize'),
        crossAxisAlignment: getValueOf('crossAxisAlignment'),
        textDirection: getValueOf('textDirection'),
        verticalDirection: getValueOf('verticalDirection'),
        textBaseLine: getValueOf('textBaseLine'),
      );

  @override
  void registerFields() {
    mainAxisAlignmentField(
      id: "mainAxisAlignment",
      title: "Main Axis Alignment",
    );
    mainAxisSizeField(
      id: "mainAxisSize",
      title: "Main Axis Size",
    );
    crossAxisAlignmentField(
      id: "crossAxisAlignment",
      title: "Cross Axis Alignment",
    );
    textDirectionField(
      id: "textDirection",
      title: "Text Direction",
    );
    verticalDirectionField(
      id: "verticalDirection",
      title: "Vertical Direction",
    );
    listField<TextBaseline>(
      id: "textBaseLine",
      title: "TextBaseLine",
      values: TextBaseline.values,
    );
  }
}

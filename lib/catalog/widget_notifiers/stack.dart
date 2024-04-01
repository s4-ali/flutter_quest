import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/alignment_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/text_direction_field.dart';

typedef StackProperties = ({
  Alignment? alignment,
  TextDirection? textDirection,
  StackFit? fit,
  Clip? clipBehavior,
});

class StackPropertiesNotifier extends PropertiesNotifier<StackProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return Stack(
      alignment: fieldValues.alignment ?? Alignment.topLeft,
      textDirection: fieldValues.textDirection,
      fit: fieldValues.fit ?? StackFit.loose,
      clipBehavior: fieldValues.clipBehavior ?? Clip.hardEdge,
      children: const [],
    );
  }

  @override
  String get code => '''
   Stack(
      alignment: ${fieldValues.alignment},
      textDirection: ${fieldValues.textDirection},
      fit: ${fieldValues.fit},
      clipBehavior: ${fieldValues.clipBehavior},
      children: [],
    );
  ''';

  @override
  StackProperties get fieldValues => (
        alignment: getValueOf('alignment'),
        textDirection: getValueOf('textDirection'),
        fit: getValueOf('fit'),
        clipBehavior: getValueOf('clipBehavior'),
      );

  @override
  void registerFields() {
    alignmentField(id: "alignment", title: "Alignment");
    textDirectionField(id: "textDirection", title: "textDirection");
    listField<StackFit>(id: "fit", title: "Fit", values: StackFit.values);
    listField<Clip>(
      id: "clipBehavior",
      title: "ClipBehavior",
      values: Clip.values,
    );
  }
}

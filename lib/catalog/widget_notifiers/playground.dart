import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/alignment_field.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';

typedef PlaygroundProperties = ({
  double? height,
  double? width,
  bool? isRed,
  String? text,
  Alignment? alignment,
});

class PlaygroundPropertiesNotifier extends PropertiesNotifier {
  @override
  Widget buildPreview(BuildContext context) {
    final color = fieldValues.isRed == null
        ? Colors.green
        : fieldValues.isRed!
            ? Colors.red
            : Colors.blue;

    return Align(
      alignment: fieldValues.alignment ?? Alignment.center,
      child: Container(
        height: fieldValues.height,
        width: fieldValues.width,
        decoration: BoxDecoration(
          color: color,
        ),
        child: fieldValues.text == null
            ? null
            : Center(
                child: Text(fieldValues.text!),
              ),
      ),
    );
  }

  @override
  String get code => '''
   Align(
      alignment: ${fieldValues.alignment ?? Alignment.center},
      child: Container(
        height: ${fieldValues.height},
        width: ${fieldValues.width},
        decoration: BoxDecoration(
          color: ${fieldValues.isRed == null ? 'Colors.green' : fieldValues.isRed! ? 'Colors.red' : 'Colors.blue'},
        ),
        child: ${fieldValues.text == null ? 'null' : "Center(child: Text('${fieldValues.text!}'),)"},
      ),
    );
  ''';

  @override
  get fieldValues => (
        height: getValueOf('height'),
        width: getValueOf('width'),
        isRed: getValueOf('isRed'),
        text: getValueOf('text'),
        alignment: getValueOf('alignment'),
      );

  @override
  void registerFields() {
    heightField();
    widthField();
    booleanField(id: "isRed", title: "Is Red");
    listField<String>(
      title: "String",
      id: 'text',
      values: [
        "One",
        "Two",
        "Three",
        "Four",
      ],
    );
    alignmentField(id: "alignment", title: "Alignment");
  }
}

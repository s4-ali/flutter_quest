import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/alignment_field.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';

typedef PlaygroundProperties = ({
  ValueHolder<double?> height,
  ValueHolder<double?> width,
  ValueHolder<bool?> isRed,
  ValueHolder<String?> text,
  ValueHolder<Alignment?> alignment,
});

class PlaygroundPropertiesNotifier extends PropertiesNotifier<
    PlaygroundProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    final color = fieldValues.isRed == null
        ? Colors.green
        : fieldValues.isRed!.isSet
        ? Colors.red
        : Colors.blue;

    return Align(
      alignment: fieldValues.alignment.isSet? fieldValues.alignment.value! : Alignment.center,
      child: Container(
        height: fieldValues.height.isSet? fieldValues.height.value : null,
        width: fieldValues.width.isSet? fieldValues.width.value : null,
        decoration: BoxDecoration(
          color: color,
        ),
        child: fieldValues.text == null
            ? null
            : Center(
          child: Text(fieldValues.text.isSet? fieldValues.text.value! : " ",),
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
          color: ${fieldValues.isRed == null ? 'Colors.green' : fieldValues.isRed!.isSet ? 'Colors.red' : 'Colors.blue'},
        ),
        child: ${fieldValues.text == null ? 'null' : "Center(child: Text('${fieldValues.text!}'),)"},
      ),
    );
  ''';

  @override
  PlaygroundProperties get fieldValues => (
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

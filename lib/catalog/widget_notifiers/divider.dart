import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';

typedef DividerProperties = ({
  ValueHolder<double?> height,
  ValueHolder<double?> thickness,
  ValueHolder<double?> indent,
  ValueHolder<double?> endIndent,
  ValueHolder<Color?> color,
});

class DividerPropertiesNotifier extends PropertiesNotifier<DividerProperties> {

  @override
  DividerProperties get fieldValues {
    return (
      height: getValueOf("height"),
      thickness: getValueOf("thickness"),
      indent: getValueOf("indent"),
      endIndent: getValueOf("endIndent"),
      color: getValueOf("color"),
    );
  }

  @override
  Widget buildPreview(BuildContext context) {
    return Divider(
      height: fieldValues.height.isSet ? fieldValues.height.value : null,
      thickness: fieldValues.thickness.isSet ? fieldValues.thickness.value : null,
      indent: fieldValues.indent.isSet ? fieldValues.indent.value : null,
      endIndent: fieldValues.endIndent.isSet ? fieldValues.endIndent.value : null,
      color: fieldValues.color.isSet ? fieldValues.color.value : null,
    );
  }

  @override
  String get code {
    return """
        Divider(
          height: ${fieldValues.height},
          thickness: ${fieldValues.thickness},
          indent: ${fieldValues.indent},
          endIndent: ${fieldValues.endIndent},
          color: ${fieldValues.color},
        )""";
  }

  @override
  void registerFields() {
    heightField();
    doubleField(
      id: "thickness",
      title: "Thickness",
      initialValue: 5,
    );
    doubleField(
      id: "indent",
      title: "Indent",
      initialValue: 10,
    );
    doubleField(
      id: "endIndent",
      title: "End Indent",
      initialValue: 10,
    );
    colorField(
      id: "color",
      title: 'Color',
      initialValue: Colors.blue,
    );
  }
}

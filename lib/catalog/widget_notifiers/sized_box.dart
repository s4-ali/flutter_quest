import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/number_field.dart';

typedef SizedBoxProperties = ({
  ValueHolder<double?> height,
  ValueHolder<double?> width,
});

class SizedBoxPropertiesNotifier
    extends PropertiesNotifier<SizedBoxProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return SizedBox(
      height: fieldValues.height.isSet ? fieldValues.height.value : null,
      width: fieldValues.width.isSet ? fieldValues.width.value : null,
      child: ColoredBox(
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  @override
  String get code => '''
   SizedBox(
      height: ${fieldValues.height},
      width: ${fieldValues.width},
      child: ColoredBox(
        color: Theme.of(context).primaryColor,
      ),
    );
  ''';

  @override
  SizedBoxProperties get fieldValues => (
        height: getValueOf('height'),
        width: getValueOf('width'),
      );

  @override
  void registerFields() {
    heightField();
    widthField();
  }
}

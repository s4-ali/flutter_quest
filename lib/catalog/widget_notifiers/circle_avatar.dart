import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/image_provider_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';

typedef CircleAvatarProperties = ({
  ValueHolder<Color?> backgroundColor,
  ValueHolder<ImageProvider?> backgroundImage,
  ValueHolder<ImageProvider?> foregroundImage,
  ValueHolder<Color?> foregroundColor,
  ValueHolder<double?> radius,
  ValueHolder<double?> minRadius,
  ValueHolder<double?> maxRadius,
  ValueHolder<String?> childText,
});

class CircleAvatarPropertiesNotifier
    extends PropertiesNotifier<CircleAvatarProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    // TODO: Use field values instead
    return CircleAvatar(
      radius: fieldValues.radius.isSet ? fieldValues.radius.value : null,
      backgroundColor: fieldValues.backgroundColor.isSet ? fieldValues.backgroundColor.value : null,
      backgroundImage: fieldValues.backgroundImage.isSet ? fieldValues.backgroundImage.value : null,
      foregroundImage: fieldValues.foregroundImage.isSet ? fieldValues.foregroundImage.value : null,
      foregroundColor: fieldValues.foregroundColor.isSet ? fieldValues.foregroundColor.value : null,
      minRadius: fieldValues.minRadius.isSet ? fieldValues.minRadius.value : null,
      maxRadius: fieldValues.maxRadius.isSet ? fieldValues.maxRadius.value : null,
      child: Text(fieldValues.childText.isSet ? fieldValues.childText.value! : ""),
    );
  }

  //TODO: Use field values instead
  @override
  String get code => '''
    CircleAvatar(
      radius: ${getValueOf('radius')},
      backgroundColor: ${getValueOf('backgroundColor')},
      backgroundImage: ${getValueOf('backgroundImage')},
      foregroundImage: ${getValueOf('foregroundImage')},
      foregroundColor: ${getValueOf('foregroundColor')},
      minRadius: ${getValueOf('minRadius')},
      maxRadius: ${getValueOf('maxRadius')},
      child: Text(${getValueOf('childText') ?? ""}),
    );
  ''';

  @override
  CircleAvatarProperties get fieldValues => (
        backgroundColor: getValueOf('backgroundColor'),
        backgroundImage: getValueOf('backgroundImage'),
        foregroundImage: getValueOf('foregroundImage'),
        foregroundColor: getValueOf('foregroundColor'),
        radius: getValueOf('radius'),
        minRadius: getValueOf('minRadius'),
        maxRadius: getValueOf('maxRadius'),
        childText: getValueOf('childText'),
      );

  @override
  void registerFields() {
    colorField(id: "backgroundColor", title: "Background Color");
    imageProviderField(id: "backgroundImage", title: "Background Image");
    imageProviderField(id: "foregroundImage", title: "Foreground Image");
    colorField(id: "foregroundColor", title: "Foreground Color");
    doubleField(id: "radius", title: "Radius");
    doubleField(id: "minRadius", title: "Minimum Radius");
    doubleField(id: "maxRadius", title: "Maximum Radius");
    stringField(id: "childText", title: "Child Text");
  }
}

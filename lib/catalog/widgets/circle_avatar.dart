import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/image_provider_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class CircleAvatarPropertyExplorer extends StatelessWidget {
  const CircleAvatarPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Circle Avatar",
      builder: (provider) {
        final backgroundColor = provider.colorField(
            id: "backgroundColor", title: "Background Color");
        final backgroundImage = provider.imageProviderField(
            id: "backgroundImage", title: "Background Image");
        final foregroundImage = provider.imageProviderField(
            id: "foregroundImage", title: "Foreground Image");
        final foregroundColor = provider.colorField(
            id: "foregroundColor", title: "Foreground Color");
        final radius =
            provider.doubleField(id: "radius", title: "Radius");
        final minRadius =
            provider.doubleField(id: "minRadius", title: "Minimum Radius");
        final maxRadius =
            provider.doubleField(id: "maxRadius", title: "MaximumRadius");
        final childText = provider.stringField(id: "childText", title: "Child Text");
        return CircleAvatar(
          radius: radius,
          backgroundColor: backgroundColor,
          backgroundImage: backgroundImage,
          foregroundImage: foregroundImage,
          foregroundColor: foregroundColor,
          minRadius: minRadius,
          maxRadius: maxRadius,
          child: Text(childText?? ""),
        );
      },
    );
  }
}

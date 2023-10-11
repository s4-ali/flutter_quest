import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/image_provider_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
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
            provider.numberField(id: "radius", title: "Radius") ?? 0.0;
        final minRadius =
            provider.numberField(id: "minRadius", title: "Minimum Radius") ??
                0.0;
        final maxRadius =
            provider.numberField(id: "maxRadius", title: "MaximumRadius") ??
                0.0;
        return CircleAvatar(
          radius: radius.toDouble(),
          backgroundColor: backgroundColor,
          backgroundImage: backgroundImage,
          foregroundImage: foregroundImage,
          onBackgroundImageError: (exception, stackTrace) {},
          onForegroundImageError: (exception, stackTrace) {},
          foregroundColor: foregroundColor,
          minRadius: minRadius.toDouble(),
          maxRadius: maxRadius.toDouble(),
          child: const Text('Image'),
        );
      },
    );
  }
}

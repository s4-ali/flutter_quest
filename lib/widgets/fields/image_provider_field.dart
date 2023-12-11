import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

class ImageProviderField extends PropertyWidget<ImageProvider> {
  const ImageProviderField({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      fallbackHeight: 60,
    );
  }
}

class ImageProviderPreviewer extends StatelessWidget {
  const ImageProviderPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<ImageProvider>(
      values: const [
        AssetImage(''),
        NetworkImage(''),
      ],
      propertyBuilder: (onChanged, value) {
        return ImageProviderField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_params.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/image_provider_field.dart';

class ImageProviderPropertyParams extends BasePropertyParams<ImageProvider> {
  ImageProviderPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class ImageProviderPropertyField
    extends PropertyField<ImageProviderPropertyParams, ImageProvider> {
  ImageProviderPropertyField(super.provider, super.params);

  @override
  Widget build(
    ImageProviderPropertyParams params,
    Function(ValueHolder<ImageProvider>) onChanged,
    ImageProvider value,
  ) {
    return ImageProviderField(
      onChanged: onChanged,
      value: value,
    );
  }
}

extension ImageProviderFieldPropertyProvider on PropertiesNotifier {
  void imageProviderField({
    required String id,
    required String title,
    ImageProvider? initialValue,
    bool isOptional = true,
    ImageProvider? defaultValue,
  }) {
    final params = ImageProviderPropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue = const AssetImage("Add the image", ),
      initialValue: initialValue,
    );
    ImageProviderPropertyField(
      this,
      params,
    ).register();
  }
}

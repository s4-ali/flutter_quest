import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_params.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/clip_field.dart';

class ClipPropertyParams extends BasePropertyParams<Clip> {
  ClipPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class ClipPropertyField
    extends PropertyField<ClipPropertyParams, Clip> {
  ClipPropertyField(super.provider, super.params);

  @override
  Widget build(
    ClipPropertyParams params,
    Function(ValueHolder<Clip>) onChanged,
    Clip value,
  ) {
    return ClipField(
      onChanged: onChanged,
      value: value,
    );
  }
}

extension ClipFieldPropertyProvider on PropertiesNotifier {
  void clipField({
    required String id,
    required String title,
    Clip? initialValue,
    bool isOptional = true,
    Clip defaultValue = Clip.none,
  }) {
    final params = ClipPropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue,
      initialValue: initialValue,
    );
    ClipPropertyField(
      this,
      params,
    ).register();
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter_quest/core/property_params.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/alignment_field.dart';

class AlignmentPropertyParams extends BasePropertyParams<Alignment> {
  AlignmentPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class AlignmentPropertyField
    extends PropertyField<AlignmentPropertyParams, Alignment> {
  AlignmentPropertyField(super.provider, super.params);

  @override
  Widget build(
    AlignmentPropertyParams params,
    Function(ValueHolder<Alignment>) onChanged,
    Alignment value,
  ) {
    return AlignmentField(
      onChanged: onChanged,
      value: value,
    );
  }
}

extension AlignmentFieldPropertyProvider on PropertiesNotifier {
  void alignmentField({
    required String id,
    required String title,
    Alignment? initialValue,
    bool isOptional = true,
    Alignment defaultValue = Alignment.center,
  }) {
    final params = AlignmentPropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue,
      initialValue: initialValue,
    );
    AlignmentPropertyField(
      this,
      params,
    ).register();
  }
}



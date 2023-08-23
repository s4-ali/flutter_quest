{{^generateFieldWidget}}import 'package:flutter/material.dart';{{/generateFieldWidget}}
import 'package:flutter_quest/core/property_provider.dart';
{{#generateFieldWidget}}import 'package:flutter_quest/widgets/fields/{{name.snakeCase()}}_field.dart';{{/generateFieldWidget}}

class {{name.pascalCase()}}PropertyParams extends PropertyParams<{{type}}> {
  {{name.pascalCase()}}PropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class {{name.pascalCase()}}PropertyField
    extends PropertyField<{{name.pascalCase()}}PropertyParams, {{type}}> {
  {{name.pascalCase()}}PropertyField(super.provider, super.params);

  @override
  Widget build(
    {{name.pascalCase()}}PropertyParams params,
    Function({{type}}) onChanged,
    {{type}} value,
  ) {
    {{#generateFieldWidget}}return {{name.pascalCase()}}Field(
      onChanged: onChanged,
      value: value,
    );{{/generateFieldWidget}}{{^generateFieldWidget}}return const Placeholder();{{/generateFieldWidget}}
  }
}

extension {{name.pascalCase()}}FieldPropertyProvider on PropertyProvider {
  {{type}}? {{name.camelCase()}}Field({
    required String id,
    required String title,
    {{type}}? initialValue,
    bool isOptional = true,
    {{type}} defaultValue = {{defaultValue}},
  }) {
    final params = {{name.pascalCase()}}PropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue,
      initialValue: initialValue,
    );
    return {{name.pascalCase()}}PropertyField(
      this,
      params,
    )();
  }
}

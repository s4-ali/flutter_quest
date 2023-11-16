import 'package:flutter/cupertino.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/sections/{{name.snakeCase()}}.dart';

class {{name.pascalCase()}}PropertyParams extends PropertyParams<{{type}}> {
  {{name.pascalCase()}}PropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class {{name.pascalCase()}}PropertySection
    extends PropertyField<{{name.pascalCase()}}PropertyParams, {{type}}> {
  {{name.pascalCase()}}PropertySection(super.provider, super.params);

  @override
  Widget build(
      {{name.pascalCase()}}PropertyParams params,
      Function({{type}}) onChanged,
      {{type}} value,
      ) {
    return {{name.pascalCase()}}Section(onChanged: onChanged, value: value);
  }
}

extension {{name.pascalCase()}}PropertyProvider on PropertyProvider {
{{type}}? {{name.camelCase()}}Section({
    required String id,
    required String title,
    {{type}}? initialValue,
    bool isOptional = true,
    {{type}}? defaultValue = {{defaultValue}},
  }) {
    final params = {{name.pascalCase()}}PropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue ?? const {{type}}(),
      initialValue: initialValue ?? const {{type}}(),
    );
    return {{name.pascalCase()}}PropertySection(
      this,
      params,
    )();
  }
}

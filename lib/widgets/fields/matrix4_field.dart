import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

class Matrix4Field extends PropertyWidget<Matrix4> {

  const Matrix4Field({
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

class Matrix4Previewer extends StatelessWidget {
  const Matrix4Previewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<Matrix4>(
      title: "Matrix4",
      values: [Matrix4.zero()],
      valueTitleBuilder: (val) => "Matrix4.zero()",
      propertyBuilder: (onChanged, value) {
        return Matrix4Field(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/section_builder.dart';

class {{name.pascalCase()}}Section extends StatelessWidget {
  final void Function({{type}}) onChanged;
  final {{type}} value;

  const {{name.pascalCase()}}Section({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return SectionBuilder(
      widgetName: '{{name.pascalCase()}}',
      builder: (configurations) {
        //TODO: Implement your section here
      },
    );
  }
}
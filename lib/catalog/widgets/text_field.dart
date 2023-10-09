import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class TextFieldPropertyExplorer extends StatelessWidget {
  const TextFieldPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "TextField",
      builder: (provider) {
        return const TextField();
      },
    );
  }
}

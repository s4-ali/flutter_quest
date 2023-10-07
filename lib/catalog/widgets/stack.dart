import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class StackPropertyExplorer extends StatelessWidget {
  const StackPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Stack",
      builder: (provider) {
        return const Stack();
      },
    );
  }
}

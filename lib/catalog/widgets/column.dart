import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class ColumnPropertyExplorer extends StatelessWidget {
  const ColumnPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Column",
      builder: (provider) {
        return const Column();
      },
    );
  }
}

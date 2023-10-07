import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class RowPropertyExplorer extends StatelessWidget {
  const RowPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Row",
      builder: (provider) {
        return const Row();
      },
    );
  }
}

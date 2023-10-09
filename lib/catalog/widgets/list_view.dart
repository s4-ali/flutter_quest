import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class ListViewPropertyExplorer extends StatelessWidget {
  const ListViewPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "ListView",
      builder: (provider) {
        return ListView();
      },
    );
  }
}

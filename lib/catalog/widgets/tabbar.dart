import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class TabBarPropertyExplorer extends StatelessWidget {
  const TabBarPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "TabBar",
      builder: (provider) {
        return const TabBar(tabs: []);
      },
    );
  }
}

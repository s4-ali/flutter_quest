import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class AppBarPropertyExplorer extends StatelessWidget {
  const AppBarPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "AppBar",
      builder: (provider) {
        return AppBar();
      },
    );
  }
}

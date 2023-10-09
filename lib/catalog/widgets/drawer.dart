import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class DrawerPropertyExplorer extends StatelessWidget {
  const DrawerPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Drawer",
      builder: (provider) {
        return const Drawer();
      },
    );
  }
}

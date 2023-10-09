import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class DividerPropertyExplorer extends StatelessWidget {
  const DividerPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Divider",
      builder: (provider) {
        return const Divider();
      },
    );
  }
}

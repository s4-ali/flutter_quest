import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class SwitchPropertyExplorer extends StatelessWidget {
  const SwitchPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Switch",
      builder: (provider) {
        return Switch(value: false, onChanged: (val) {});
      },
    );
  }
}

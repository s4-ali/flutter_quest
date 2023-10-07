import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class OutlinedButtonPropertyExplorer extends StatelessWidget {
  const OutlinedButtonPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Outlined Button",
      builder: (provider) {
        return OutlinedButton(
          onPressed: () {},
          child: const Text('Outlined Button'),
          onLongPress: () {},
          onFocusChange: (v) {},
          onHover: (v) {},
        );
      },
    );
  }
}

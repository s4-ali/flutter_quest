import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class TextButtonPropertyExplorer extends StatelessWidget {
  const TextButtonPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Text Button",
      builder: (provider) {
        return TextButton(
          onPressed: () {},
          onHover: (v) {},
          onFocusChange: (v) {},
          onLongPress: () {},
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
            padding: const EdgeInsets.all(16),
          ),
          child: const Text(
            'Click Me!',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}

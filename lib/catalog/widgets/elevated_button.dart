import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class ElevatedButtonPropertyExplorer extends StatelessWidget {
  const ElevatedButtonPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Slider",
      builder: (provider) {
        return ElevatedButton(
            onPressed: () {}, // Function to call when button is pressed
            child: const Icon(Icons.ads_click));
      },
    );
  }
}

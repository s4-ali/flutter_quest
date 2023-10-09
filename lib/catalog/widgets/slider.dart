import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class SliderPropertyExplorer extends StatelessWidget {
  const SliderPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Slider",
      builder: (provider) {
        return Slider(value: 0, onChanged: (val) {});
      },
    );
  }
}

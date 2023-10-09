import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class NetworkImagePropertyExplorer extends StatelessWidget {
  const NetworkImagePropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Network Image",
      builder: (provider) {
        return SizedBox(
            child: Image.network(
                "https://usabilitygeek.com/wp-content/uploads/2018/06/mobile-usability-testing-lead.jpg"));
      },
    );
  }
}

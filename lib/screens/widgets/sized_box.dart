import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/propery_builder.dart';

class SizedBoxPropertyExplorer extends StatelessWidget {
  const SizedBoxPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "SizedBox",
      builder: (provider) {
        final height = provider.heightRange();
        final width = provider.widthRange();
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: height,
              width: width,
              child: const ColoredBox(
                color: Colors.blue,
              ),
            ),
          ],
        );
      },
    );
  }
}

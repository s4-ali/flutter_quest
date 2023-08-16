import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/property_holders/alignment_field.dart';
import 'package:flutter_quest/widgets/property_holders/color_picker.dart';
import 'package:flutter_quest/widgets/property_holders/number_field.dart';
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
        final height = provider.heightField();
        final width = provider.widthField();
        final fillColor = provider.color(id: "fill", title: "Fill Color");
        final alignment = provider.alignment(
          id: "alignment",
          title: "Set Alignment",
        );

        return Stack(
          children: [
            Align(
              alignment: alignment,
              child: SizedBox(
                height: height,
                width: width,
                child: ColoredBox(
                  color: fillColor,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

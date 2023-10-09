import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class ImagePropertyExplorer extends StatelessWidget {
  const ImagePropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
        widgetName: "Image",
        builder: (provider) {
          final height = provider.heightField();
          final width = provider.widthField();
          return Image(
                height: height,
                width: width,
                image: const NetworkImage(
                    "https://www.globalapptesting.com/hs-fs/hubfs/Marketing/blog/Q2/mobile-app-testing-386658-edited.jpg?width=864&name=mobile-app-testing-386658-edited.jpg"
                ),
          );
        }
    );
  }
}
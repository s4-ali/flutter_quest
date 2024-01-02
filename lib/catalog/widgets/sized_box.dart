import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

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
        return (widget: SizedBox(
          height: height,
          width: width,
          child: ColoredBox(
            color: Theme.of(context).primaryColor,
          ),
        ), code: "SizedBox code goes here...");
      },
    );
  }
}

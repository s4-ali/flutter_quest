import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/alignment_field.dart';
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
        final alignment = provider.alignmentField(id: "alignment", title: "Alignment");
        return Align(
          alignment: alignment!,
          child: SizedBox(
            height: height,
            width: width,
            child: ColoredBox(
              color: Theme.of(context).primaryColor,
            ),
          ),
        );
      },
    );
  }
}

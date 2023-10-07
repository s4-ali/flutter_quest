import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class CheckBoxPropertyExplorer extends StatelessWidget {
  const CheckBoxPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "CheckBox",
      builder: (provider) {
        final isRed = provider.booleanField(id: "isRed", title: "Is Red");
        final activeColor = isRed == null
            ? Colors.green
            : isRed
                ? Colors.red
                : Colors.blue;
        final checkColor = isRed == null
            ? Colors.green
            : isRed
                ? Colors.red
                : Colors.blue;

        return Checkbox(
          value: false,
          onChanged: (val) {},
          activeColor: activeColor,
          checkColor: checkColor,
        );
      },
    );
  }
}

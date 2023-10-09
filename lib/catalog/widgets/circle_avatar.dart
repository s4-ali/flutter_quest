import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class CircleAvatarPropertyExplorer extends StatelessWidget {
  const CircleAvatarPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Circle Avatar",
      builder: (provider) {
        final radius = provider.radiusField();
        final isRed = provider.booleanField(id: "isRed", title: "Is Red");
        final color = isRed == null
            ? Colors.green
            : isRed
                ? Colors.red
                : Colors.blue;

        return CircleAvatar(
          radius: radius,
          backgroundColor: color,
          foregroundColor: color,
          child: const Text('Image'),
        );
      },
    );
  }
}

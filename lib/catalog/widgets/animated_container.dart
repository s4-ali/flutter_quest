import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class AnimatedContainerPropertyExplorer extends StatelessWidget {
  const AnimatedContainerPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "AnimatedContainer",
      builder: (provider) {
        final height = provider.heightField();
        final width = provider.widthField();
        final borderRadius = provider.borderRadiusField();
        final isRed = provider.booleanField(id: "isRed", title: "Is Red");

        final color = isRed == null
            ? Colors.green
            : isRed
                ? Colors.red
                : Colors.blue;

        return AnimatedContainer(
          duration: const Duration(seconds: 1),
          // Animation duration
          width: width,
          // Width property
          height: height,
          // Height property
          decoration: BoxDecoration(
            color: color, // Background color property
            borderRadius:
                BorderRadius.circular(borderRadius!), // Border radius property
          ),
          child: const Center(
            child: Text(
              'Animated Container',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}

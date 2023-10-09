import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class IconButtonPropertyExplorer extends StatelessWidget {
  const IconButtonPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Icon Button",
      builder: (provider) {
        final isRed = provider.booleanField(id: "isRed", title: "Is Red");
        final color = isRed == null
            ? Colors.green
            : isRed
                ? Colors.red
                : Colors.blue;

        return IconButton(
          icon: const Icon(
            Icons.favorite,
            color: Colors.red,
            size: 40.0,
          ),
          onPressed: () {},
          tooltip: 'Favorite',
          splashRadius: 30.0,
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.center,
          iconSize: 40.0,
          enableFeedback: true,
          focusColor: Colors.blue,
          hoverColor: color,
          highlightColor: Colors.amber,
          splashColor: Colors.purple,
        );
      },
    );
  }
}

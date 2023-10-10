import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';
import 'package:flutter_quest/property_fields/number_field.dart';


class DrawerPropertyExplorer extends StatelessWidget {
  const DrawerPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Drawer",
      builder: (provider) {
        final width = provider.widthField();
        return Drawer(
          width: width,
          backgroundColor: Colors.grey,
          elevation: 10,
          shadowColor: Colors.grey,
          surfaceTintColor: Colors.greenAccent,
          shape:const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
            side: BorderSide.none,
          ),
          clipBehavior: Clip.none,
          semanticLabel: "Drawer",
          child: ListView(),
        );
      },
    );
  }
}

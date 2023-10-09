import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class FloatingActionButtonPropertyExplorer extends StatelessWidget {
  const FloatingActionButtonPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
        widgetName: "Floating Action Button",
        builder: (provider) {
          return FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            elevation: 6.0,
            splashColor: Colors.red,
            tooltip: 'Add',
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          );
        });
  }
}

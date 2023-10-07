import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class ToggleButtonPropertyExplorer extends StatefulWidget {
  const ToggleButtonPropertyExplorer({
    super.key,
  });

  @override
  State<ToggleButtonPropertyExplorer> createState() =>
      _ToggleButtonPropertyExplorerState();
}

class _ToggleButtonPropertyExplorerState
    extends State<ToggleButtonPropertyExplorer> {
  @override
  Widget build(BuildContext context) {
    List<bool> is_Selected = [false, false, false];

    return PropertyExplorerBuilder(
      widgetName: "Toggle Button",
      builder: (provider) {
        return ToggleButtons(
          isSelected: is_Selected,
          borderRadius: BorderRadius.circular(8.0),
          selectedColor: Colors.blue,
          selectedBorderColor: Colors.blue,
          fillColor: Colors.blue,
          onPressed: (index) {
            setState(() {
              is_Selected[index] = !is_Selected[index];
            });
          },
          children: const [
            Icon(
              Icons.male,
              color: Colors.white,
            ),
            Icon(
              Icons.female,
              color: Colors.white,
            ),
            Icon(
              Icons.shield_moon,
              color: Colors.white,
            ),
          ],
        );
      },
    );
  }
}

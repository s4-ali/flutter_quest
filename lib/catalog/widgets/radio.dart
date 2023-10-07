import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class RadioPropertyExplorer extends StatefulWidget {
  const RadioPropertyExplorer({
    super.key,
  });

  @override
  State<RadioPropertyExplorer> createState() => _RadioPropertyExplorerState();
}

class _RadioPropertyExplorerState extends State<RadioPropertyExplorer> {
  int selectedRadio = 0;

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Radio",
      builder: (provider) {
        return Column(
          children: [
            Radio(
                value: 0,
                groupValue: selectedRadio,
                onChanged: (v) {
                  setState(() {
                    selectedRadio = v!;
                  });
                }),
            Radio(
                value: 1,
                groupValue: selectedRadio,
                onChanged: (v) {
                  setState(() {
                    selectedRadio = v!;
                  });
                }),
            Radio(
                value: 2,
                groupValue: selectedRadio,
                onChanged: (v) {
                  setState(() {
                    selectedRadio = v!;
                  });
                }),
          ],
        );
      },
    );
  }
}

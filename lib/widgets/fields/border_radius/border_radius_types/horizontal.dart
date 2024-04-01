import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/expansion_tile.dart';

import '../radius_field.dart';

class BorderRadiusHorizontal extends StatefulWidget {
  final BorderRadius value;
  final void Function(BorderRadius) onChanged;

  const BorderRadiusHorizontal({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  State<BorderRadiusHorizontal> createState() => _BorderRadiusHorizontalState();
}

class _BorderRadiusHorizontalState extends State<BorderRadiusHorizontal> {
  late Radius left;
  late Radius right;

  @override
  void initState() {
    left = widget.value.topRight;
    right = widget.value.bottomRight;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppExpansionTile(
          title: "Left",
          child: RadiusField(
            value: left,
            onChanged: (value) {
              left = value;
              _onChanged();
            },
          ),
        ),
        AppExpansionTile(
          title: "Right",
          child: RadiusField(
            value: right,
            onChanged: (value) {
              right = value;
              _onChanged();
            },
          ),
        ),
      ],
    );
  }

  void _onChanged() {
    widget.onChanged(
      BorderRadius.vertical(
        top: left,
        bottom: right,
      ),
    );
  }
}

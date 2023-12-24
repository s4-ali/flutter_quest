import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/expansion_tile.dart';
import 'package:flutter_quest/widgets/fields/border_radius/radius_field.dart';

class BorderRadiusOnly extends StatefulWidget {
  final BorderRadius value;
  final void Function(BorderRadius) onChanged;

  const BorderRadiusOnly({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  State<BorderRadiusOnly> createState() => _BorderRadiusOnlyState();
}

class _BorderRadiusOnlyState extends State<BorderRadiusOnly> {
  late Radius topLeft;
  late Radius topRight;
  late Radius bottomLeft;
  late Radius bottomRight;

  @override
  void initState() {
    topLeft = widget.value.topLeft;
    topRight = widget.value.topRight;
    bottomLeft = widget.value.bottomLeft;
    bottomRight = widget.value.bottomRight;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppExpansionTile(
          title: "Top Left",
          child: RadiusField(
            value: topLeft,
            onChanged: (value) {
              topLeft = value;
              _onChanged();
            },
          ),
        ),
        AppExpansionTile(
          title: "Top Right",
          child: RadiusField(
            value: topRight,
            onChanged: (value) {
              topRight = value;
              _onChanged();
            },
          ),
        ),
        AppExpansionTile(
          title: "Bottom Left",
          child: RadiusField(
            value: bottomLeft,
            onChanged: (value) {
              bottomLeft = value;
              _onChanged();
            },
          ),
        ),
        AppExpansionTile(
          title: "Bottom Right",
          child: RadiusField(
            value: bottomRight,
            onChanged: (value) {
              bottomRight = value;
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
        top: topLeft,
        bottom: topRight,
      ),
    );
  }
}

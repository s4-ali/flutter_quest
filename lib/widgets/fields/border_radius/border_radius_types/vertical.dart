import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/expansion_tile.dart';

import '../radius_field.dart';

class BorderRadiusVertical extends StatefulWidget {
  final BorderRadius value;
  final void Function(BorderRadius) onChanged;

  const BorderRadiusVertical({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  State<BorderRadiusVertical> createState() => _BorderRadiusVerticalState();
}

class _BorderRadiusVerticalState extends State<BorderRadiusVertical> {
  late Radius top;
  late Radius bottom;

  @override
  void initState() {
    top = widget.value.topRight;
    bottom = widget.value.bottomRight;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppExpansionTile(
          title: "Top",
          child: RadiusField(
            value: top,
            onChanged: (value) {
              top = value;
              _onChanged();
            },
          ),
        ),
        AppExpansionTile(
          title: "Bottom",
          child: RadiusField(
            value: bottom,
            onChanged: (value) {
              bottom = value;
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
        top: top,
        bottom: bottom,
      ),
    );
  }
}

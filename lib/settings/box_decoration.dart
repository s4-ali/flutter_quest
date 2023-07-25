import 'package:flutter/material.dart';

import 'border.dart';
import 'border_radius.dart';
import 'box_shadow.dart';

class BoxDecorationProperties {
  BoxDecoration get decoration => BoxDecoration(
    color: color,
    backgroundBlendMode: backgroundBlendMode,
    border: border,
    borderRadius: borderRadius,
    boxShadow: boxShadow,
  );

  Color color = Colors.blue;
  BlendMode backgroundBlendMode = BlendMode.lighten;
  Border border = BorderProperties().border;
  BorderRadius borderRadius = BorderRadiusProperties().borderRadius;
  List<BoxShadow> boxShadow = BoxShadowsProperties().boxShadows;
}

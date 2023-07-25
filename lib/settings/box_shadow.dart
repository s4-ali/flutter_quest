import 'package:flutter/material.dart';

import 'offset.dart';

class BoxShadowsProperties {
  List<BoxShadow> get boxShadows => [BoxShadowSettings().boxShadow];
}

class BoxShadowSettings {
  Color color = Colors.black26;
  Offset offset = OffsetProperties().offset;
  double blurRadius = 5;
  double spreadRadius = 5;
  BlurStyle blurStyle = BlurStyle.normal;

  BoxShadow get boxShadow => BoxShadow(
    color: color,
    offset: offset,
    blurRadius: blurRadius,
    spreadRadius: spreadRadius,
    blurStyle: blurStyle,
  );
}

import 'package:flutter/material.dart';

class BorderProperties {
  Color color = Colors.black;
  double width = 10;
  double strokeAlign = BorderSide.strokeAlignInside;
  BorderStyle style = BorderStyle.solid;

  Border get border => Border.all(
    color: color,
    width: width,
    strokeAlign: strokeAlign,
    style: BorderStyle.solid,
  );
}

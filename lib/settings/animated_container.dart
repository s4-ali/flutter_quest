
import 'package:flutter/material.dart';

import 'box_decoration.dart';

class AnimatedContainerProperties {
  double size = 100.0;
  Color color = Colors.blue;
  double rotationX = 0;
  double rotationY = 0;
  double rotationZ = 0;
  int duration = 350;

  Matrix4 get transform {
    if (rotationX != 0) {
      return Matrix4.rotationX(rotationX);
    } else if (rotationY != 0) {
      return Matrix4.rotationY(rotationY);
    } else {
      return Matrix4.rotationZ(rotationZ);
    }
  }

  BoxDecoration boxDecoration = BoxDecorationProperties().decoration;

  @override
  String toString() {
    return 'AnimatedContainerSetting(size: $size, color: $color, rotationX: $rotationX, rotationY: $rotationY, rotationZ: $rotationZ)';
  }
}

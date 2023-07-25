
import 'package:flutter/material.dart';

extension ColorExtension on Color {
  bool isThe(Color color) {
    return this == color;
  }
}

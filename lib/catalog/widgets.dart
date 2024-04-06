import 'package:flutter/material.dart';
import 'package:generator/generator.dart';

const widgets = {
  SizedBox: "This is description",
  Container: "This is description",
  Card: "This is description",
  AppBar: "This is description",
  Checkbox: "This is description",
  Icon: "This is description",
  Image: "This is description",

  // Layouts
  Column: "This is description",
  Row: "This is description",
  Stack: "This is description",
  ListView: "This is description",
  GridView: "This is description",

  // Buttons
  ElevatedButton: "This is description",
  FloatingActionButton: "This is description",
  IconButton: "This is description",
  OutlinedButton: "This is description",
  TextButton: "This is description",

  // Form
  Text: "This is description",
  Divider: "This is description",
  Radio: "This is description",
  Slider: "This is description",
  Switch: "This is description",
  TextField: "This is description",
};

@WidgetsAnnotation(widgets: widgets)
class Widgets{}
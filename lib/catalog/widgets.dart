import 'package:flutter/material.dart';
import 'package:generator/generator.dart';

const widgets = [
  SizedBox,
  Container,
  Card,
  AppBar,
  Checkbox,
  Icon,
  Image,
  // Layouts
  Column,
  Row,
  Stack,
  ListView,
  GridView,

  // Buttons
  ElevatedButton,
  FloatingActionButton,
  IconButton,
  OutlinedButton,
  TextButton,

  // Form
  Text,
  Divider,
  Radio,
  Slider,
  Switch,
  TextField,
];

@WidgetsAnnotation(widgets: widgets)
class Widgets{}
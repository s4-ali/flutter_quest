import 'package:flutter/material.dart';
import 'package:generator/generator.dart';

const widgets = [
  AnimatedContainer,
  AppBar,
  Card,
  Checkbox,
  CircleAvatar,
  Column,
  Container,
  Divider,
  Drawer,
  ElevatedButton,
  FloatingActionButton,
  GridView,
  Icon,
  IconButton,
  Image,
  ListView,
  NetworkImage,
  OutlinedButton,
  Radio,
  Row,
  SizedBox,
  Slider,
  Stack,
  Switch,
  Text,
  TextButton,
  TextField,
  ToggleButtons,
];

@WidgetsAnnotation(widgets: widgets)
class Widgets{}
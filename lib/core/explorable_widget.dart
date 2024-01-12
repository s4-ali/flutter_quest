import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';

class ExplorableWidget {
  final Widget widget;
  final Widget code;
  final Widget drawer;
  final String title;
  final PropertiesNotifier propertiesNotifier;

  const ExplorableWidget({
    required this.widget,
    required this.title,
    required this.code,
    required this.propertiesNotifier,
    required this.drawer,
  });
}

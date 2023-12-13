import 'package:flutter/material.dart';

extension ColorExtension on Color {
  bool isThe(Color color) {
    return this == color;
  }
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colorScheme => theme.colorScheme;
}

extension SwitchThemeExtension on ValueNotifier<ThemeMode> {
  void setLightTheme() {
    value = ThemeMode.light;
  }

  void setDarkTheme() {
    value = ThemeMode.dark;
  }

  void switchTheme() {
    value = isDark ? ThemeMode.light : ThemeMode.dark;
  }

  bool get isLight => value == ThemeMode.light;

  bool get isDark => value == ThemeMode.dark;
}

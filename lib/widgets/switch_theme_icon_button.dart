import 'package:flutter/material.dart';
import 'package:flutter_quest/main.dart';
import 'package:flutter_quest/utils/extensions.dart';

class SwitchThemeIconButton extends StatelessWidget {
  const SwitchThemeIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (BuildContext context, ThemeMode value, Widget? child) {
        return IconButton(
          onPressed: themeNotifier.switchTheme,
          icon: Icon(
            themeNotifier.isDark ? Icons.light_mode : Icons.dark_mode,
          ),
        );
      },
    );
  }
}

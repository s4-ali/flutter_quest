import 'package:flutter/material.dart';
import 'package:flutter_quest/catalog/home.dart';
import 'package:flutter_quest/catalog/properties_list.dart';
import 'package:flutter_quest/catalog/widgets.providers.g.dart';
import 'package:flutter_quest/catalog/widgets/divider.dart';
import 'package:flutter_quest/catalog/widgets_list.dart';
import 'package:provider/provider.dart';

import 'core/property_provider.dart';

enum InitialScreen{
  home,
  propertiesList,
}

extension on InitialScreen{
  Widget get widget {
    switch(this) {
      case InitialScreen.home:
        return const Home();
      case InitialScreen.propertiesList:
        return const PropertiesList();
    }
  }
}

const _initialScreen = InitialScreen.home;

void main() {
  runApp(const MyApp());
}

final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);
final ValueNotifier<Color> themeColorNotifier = ValueNotifier(Colors.teal);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: getProviders(),
      builder: (_,__) => ValueListenableBuilder<Color>(
        valueListenable: themeColorNotifier,
        builder: (_, color, __) {
          return ValueListenableBuilder<ThemeMode>(
            valueListenable: themeNotifier,
            builder: (_, mode, __) {
              return MaterialApp(
                title: 'Flutter Quest',
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  colorScheme: ColorScheme.fromSeed(
                    seedColor: color,
                    brightness: Brightness.light,
                  ),
                  sliderTheme: const SliderThemeData(
                    showValueIndicator: ShowValueIndicator.always,
                  ),
                ),
                darkTheme: ThemeData(
                  colorScheme: ColorScheme.fromSeed(
                    seedColor: color,
                    brightness: Brightness.dark,
                  ),
                  sliderTheme: const SliderThemeData(
                    showValueIndicator: ShowValueIndicator.always,
                  ),
                ),
                themeMode: mode,
                home: const Home(),//_initialScreen.widget,
              );
            },
          );
        },
      ) ,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void dispose() {
    themeNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Quest"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Animations"),
            onTap: () {
              navigateTo(context, const Home());
            },
          )
        ],
      ),
    );
  }
}

void navigateTo(BuildContext context, Widget screen) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (_) => screen,
    ),
  );
}

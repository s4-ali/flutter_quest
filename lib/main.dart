import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quest/catalog/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Quest',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF3772FF),
        ),
        sliderTheme: const SliderThemeData(
          showValueIndicator: ShowValueIndicator.always,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(useMaterial3: true).copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF3772FF),
        ),
        sliderTheme: const SliderThemeData(
          showValueIndicator: ShowValueIndicator.always,
        ),
        useMaterial3: true,
        // scaffoldBackgroundColor: Colors.,
      ),
      themeMode: ThemeMode.dark,
      home: const Home(),
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

void debugPrint(Object object) {
  if (kDebugMode) {
    print(object);
  }
}

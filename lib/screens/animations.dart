import 'package:flutter/material.dart';

class AnimationsList extends StatelessWidget {
  const AnimationsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animations"),),
      body: ListView(
        children: const [
          ListTile(
            title: Text("Animated Container"),
          )
        ],
      ),
    );
  }
}

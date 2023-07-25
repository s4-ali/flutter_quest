import 'package:flutter/material.dart';
import 'package:flutter_quest/main.dart';
import 'package:flutter_quest/screens/animations/built_in_animations/animated_container.dart';

class AnimationsList extends StatelessWidget {
  const AnimationsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animations"),),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Animated Container"),
            onTap: (){
              navigateTo(context, const AnimatedContainerExample());
            },
          )
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_quest/settings/animated_container.dart';
import 'package:flutter_quest/widgets/pickers/color_picker.dart';

class AnimatedContainerSettingsDrawer extends StatefulWidget {
  final AnimatedContainerProperties initialSettings;
  final Function(AnimatedContainerProperties) onSettingsUpdated;

  const AnimatedContainerSettingsDrawer({
    super.key,
    required this.onSettingsUpdated,
    required this.initialSettings,
  });

  @override
  State<AnimatedContainerSettingsDrawer> createState() =>
      _AnimatedContainerSettingsDrawerState();
}

class _AnimatedContainerSettingsDrawerState
    extends State<AnimatedContainerSettingsDrawer> {
  late AnimatedContainerProperties settings;

  @override
  void initState() {
    settings = widget.initialSettings;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.85,
      child: ColoredBox(
        color: Theme.of(context).colorScheme.background,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              ListTile(
                title: const Text("Duration"),
                subtitle: Slider(
                  label: "${settings.duration} ms",
                  value: settings.duration.toDouble(),
                  min: 10,
                  max: 2000,
                  onChanged: onDurationUpdated,
                ),
              ),
              ListTile(
                title: const Text("Size"),
                subtitle: Slider(
                  label: "${settings.size.toInt()}",
                  value: settings.size,
                  min: 10,
                  max: 300,
                  onChanged: onSizeUpdated,
                ),
              ),
              ListTile(
                title: const Text("Color"),
                subtitle: ColorSelector(
                  title: "Color",
                  key: ValueKey(settings.color),
                  selectedColor: settings.color,
                  onColorUpdated: onColorUpdated,
                ),
              ),
              ListTile(
                title: const Text("Rotation X"),
                subtitle: Slider(
                  label: settings.rotationX.toStringAsFixed(2),
                  value: settings.rotationX,
                  min: 0,
                  max: 3.14,
                  onChanged: onRotationXUpdated,
                ),
              ),
              ListTile(
                title: const Text("Rotation Y"),
                subtitle: Slider(
                  label: settings.rotationY.toStringAsFixed(2),
                  value: settings.rotationY,
                  min: 0,
                  max: 3.14,
                  onChanged: onRotationYUpdated,
                ),
              ),
              ListTile(
                title: const Text("Rotation Z"),
                subtitle: Slider(
                  label: settings.rotationZ.toStringAsFixed(2),
                  value: settings.rotationZ,
                  min: 0,
                  max: 3.14,
                  onChanged: onRotationZUpdated,
                ),
              ),
              ElevatedButton(
                onPressed: update,
                child: const Text("Update"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void update() async {
    Navigator.pop(context);
    await Future.delayed(
      const Duration(milliseconds: 350),
    );
    widget.onSettingsUpdated(settings);
  }

  void onSizeUpdated(double value) {
    setState(() {
      settings.size = value;
    });
  }

  void onColorUpdated(Color color) {
    setState(() {
      settings.color = color;
    });
  }

  void onRotationXUpdated(double value) {
    setState(() {
      settings.rotationX = value;
      settings.rotationY = 0;
      settings.rotationZ = 0;
    });
  }

  void onRotationYUpdated(double value) {
    setState(() {
      settings.rotationX = 0;
      settings.rotationY = value;
      settings.rotationZ = 0;
    });
  }

  void onRotationZUpdated(double value) {
    setState(() {
      settings.rotationX = 0;
      settings.rotationY = 0;
      settings.rotationZ = value;
    });
  }

  void onDurationUpdated(double value) {
    setState(() {
      settings.duration = value.toInt();
    });
  }
}


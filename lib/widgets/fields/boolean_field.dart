import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

class BooleanField extends PropertyWidget<bool> {
  const BooleanField({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.7,
      child: Switch(
        trackOutlineColor: MaterialStateProperty.all(Colors.transparent),
        thumbIcon: MaterialStateProperty.all(const Icon(
          Icons.circle_sharp,
          color: Colors.transparent,
        )),
        activeColor: const Color(0xFFFFFFFF),
        activeTrackColor: const Color(0xFF0099FF),
        inactiveTrackColor: const Color(0xFF35363A),
        inactiveThumbColor: const Color(0xFF808080),
        value: value,
        onChanged: (value) {
          onChanged(value);
        },
      ),
    );
  }
}

class BooleanPreviewer extends StatelessWidget {
  const BooleanPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<bool>(
      values: const [true, false],
      propertyBuilder: (onChanged, value) {
        return BooleanField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

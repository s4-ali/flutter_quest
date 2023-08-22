import 'package:flutter/material.dart';

class BooleanField extends StatelessWidget {
  final Function(bool) onChanged;
  final bool initial;

  const BooleanField({
    super.key,
    required this.onChanged,
    required this.initial,
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
        activeColor: Colors.white,
        activeTrackColor: const Color(0xFF3772FF),
        inactiveTrackColor: const Color(0xFF36343b),
        inactiveThumbColor: const Color(0xFF938F99),
        value: initial,
        onChanged: (value) {
          onChanged(value);
        },
      ),
    );
  }
}

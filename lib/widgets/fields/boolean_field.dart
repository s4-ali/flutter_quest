import 'package:flutter/material.dart';

class BooleanField extends StatelessWidget {
  final String title;
  final Function(bool) onChanged;
  final bool initial;

  const BooleanField({
    super.key,
    required this.title,
    required this.onChanged,
    required this.initial,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(
          height: 6,
        ),
        SizedBox(
          height: 20,
          width: 36,
          child: FittedBox(
            fit: BoxFit.fill,
            child: Switch(
              trackOutlineColor: MaterialStateProperty.all(Colors.transparent),
              thumbIcon: MaterialStateProperty.all(const Icon(Icons.circle_sharp, color: Colors.transparent,)),
              activeColor: Colors.white,
              activeTrackColor: const Color(0xFF3772FF),
              inactiveTrackColor: const Color(0xFF36343b),
              inactiveThumbColor: const Color(0xFF938F99),
              value: initial,
              onChanged: (value) {
                onChanged(value);
              },

            ),
          ),
        ),
      ],
    );
  }
}

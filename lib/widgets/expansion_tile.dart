import 'package:flutter/material.dart';

class AppExpansionTile extends StatelessWidget {
  final String title;
  final Widget child;

  const AppExpansionTile({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(title),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: child,
        ),
      ],
    );
  }
}

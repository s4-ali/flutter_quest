import 'package:flutter/material.dart';
import 'package:flutter_quest/core/logger.dart';

class PropertiesDrawer extends StatelessWidget {
  final String title;
  final List<Widget> widgets;

  const PropertiesDrawer({
    super.key,
    required this.widgets,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    log.i("$title -> properties: ${widgets.length}");
    return Drawer(
      width: 350,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                "$title Properties",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ...widgets.map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(bottom: 0),
                      child: e,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

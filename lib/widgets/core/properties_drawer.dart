import 'package:flutter/material.dart';

class PropertiesDrawer extends StatelessWidget {
  final String title;
  final List<Widget> properties;
  const PropertiesDrawer({
    super.key,
    required this.title,
    required this.properties,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 350,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          children: [
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                "$title Properties",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ...properties.map(
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

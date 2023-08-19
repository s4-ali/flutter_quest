import 'package:flutter/material.dart';

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
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).drawerTheme.backgroundColor,
        boxShadow: const [
          BoxShadow(
              color: Colors.black26, offset: Offset(-4, 3), blurRadius: 4),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: 350,
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
                    padding: const EdgeInsets.only(bottom: 16),
                    child: e,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

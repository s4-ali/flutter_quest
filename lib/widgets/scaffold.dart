import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/drawers/properties_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WidgetEditorScaffold extends StatelessWidget {
  final String title;
  final Widget widget;
  final List<Widget>? properties;

  const WidgetEditorScaffold({
    super.key,
    required this.title,
    required this.widget,
    this.properties,
  });

  Widget? buildDrawer() {
    if (properties == null) {
      return null;
    }
    return PropertiesDrawer(title: title, widgets: properties!);
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(title),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }

  Widget buildMobile(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      endDrawer: buildDrawer(),
      body: widget,
    );
  }

  Widget buildTablet(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: widget,
            ),
          ),
          if (properties != null) buildDrawer()!,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: buildMobile,
      tablet: buildTablet,
      desktop: buildTablet,
      watch: (BuildContext context) => Container(color: Colors.purple),
    );
  }
}

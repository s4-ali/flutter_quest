import 'package:dart_code_viewer2/dart_code_viewer2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quest/catalog/widgets_list.dart';
import 'package:flutter_quest/utils/extensions.dart';
import 'package:flutter_quest/widgets/core/properties_drawer.dart';
import 'package:flutter_quest/widgets/switch_theme_icon_button.dart';
import 'package:flutter_quest/widgets/theme_colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WidgetEditorPage extends StatelessWidget {
  final ExplorableWidget widget;

  const WidgetEditorPage({
    super.key,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return widget.widget;
  }
}

class WidgetEditor extends StatefulWidget {
  final String title;
  final Widget widget;
  final List<Widget>? properties;
  final String code;

  const WidgetEditor({
    super.key,
    required this.title,
    required this.widget,
    required this.code,
    this.properties,
  });

  @override
  State<WidgetEditor> createState() => _WidgetEditorState();
}

class _WidgetEditorState extends State<WidgetEditor>
    with TickerProviderStateMixin {
  late Widget selectedWidget;

  Widget? buildPropertyDrawer() {
    if (widget.properties == null) {
      return null;
    }
    return PropertiesDrawer(title: widget.title, widgets: widget.properties!);
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(widget.title),
      // actions: [
      //   IconButton(
      //     onPressed: () {},
      //     icon: const Icon(Icons.add),
      //   ),
      // ],
    );
  }

  Widget buildMobile(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      endDrawer: buildPropertyDrawer(),
      body: widget.widget,
    );
  }

  Widget buildTablet(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 300,
                      child: TabBar(
                        tabs: [
                          Tab(
                            text: "Widget",
                          ),
                          Tab(
                            text: "Code",
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        widget.title,
                        style: context.textTheme.titleLarge,
                      ),
                    ),
                    const Row(
                      children: [
                        ThemeColors(),
                        SwitchThemeIconButton(),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Center(
                        child: widget.widget,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: DartCodeViewer(
                          widget.code,
                          classStyle: TextStyle(
                            color: context.colorScheme.primary,
                          ),
                          numberStyle: TextStyle(
                            color: context.colorScheme.tertiary,
                          ),
                          punctuationStyle: TextStyle(
                            color: context.colorScheme.onSurface,
                          ),
                          showCopyButton: false,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (widget.properties != null) buildPropertyDrawer()!,
        ],
      ),
    );
  }

  Widget buildDesktop(BuildContext context) {
    return const SizedBox();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: buildMobile,
      tablet: buildTablet,
      desktop: buildDesktop,
      watch: (BuildContext context) => Container(color: Colors.purple),
    );
  }
}

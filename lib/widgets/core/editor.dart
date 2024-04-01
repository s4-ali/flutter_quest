import 'package:flutter/material.dart';
import 'package:flutter_quest/core/explorable_widget.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/utils/extensions.dart';
import 'package:flutter_quest/widgets/switch_theme_icon_button.dart';
import 'package:flutter_quest/widgets/theme_colors.dart';
import 'package:provider/provider.dart';
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

  const WidgetEditor({
    super.key,
  });

  @override
  State<WidgetEditor> createState() => _WidgetEditorState();
}

class _WidgetEditorState extends State<WidgetEditor>
    with TickerProviderStateMixin {

  AppBar buildAppBar() {
    return AppBar(
      title: const Text("widget.title"),
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
      endDrawer: const SizedBox(),
      body: const SizedBox(),
    );
  }

  Widget buildTablet(BuildContext context) {
    return Consumer<ActiveWidgetNotifier>(
      builder: (_, notifier, __){
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
                            notifier.explorable.title,
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
                            child: notifier.explorable.widget,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: notifier.explorable.code,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              notifier.explorable.drawer,
            ],
          ),
        );
      },
    );
  }

  Widget buildDesktop(BuildContext context) {
    return buildTablet(context);
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

import 'package:flutter/material.dart';
import 'package:flutter_quest/catalog/widgets.providers.g.dart';
import 'package:flutter_quest/widgets/explore_widget_card.dart';
import 'package:flutter_quest/widgets/title_container_with_theme.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final widgetsList = explorableWidgets.values.toList();
    final itemCount = widgetsList.length;
    return Scaffold(
      body: Column(
        children: [
          const TitleContainerWithTheme(title: "Explore Widgets"),
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Wrap(
                    children: [
                      for (int i = 0; i < itemCount; i++)
                        ExploreWidgetCard(widget: widgetsList[i])
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}

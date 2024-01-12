import 'package:flutter/material.dart';
import 'package:flutter_quest/catalog/widgets.providers.g.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/utils/extensions.dart';
import 'package:flutter_quest/widgets/core/editor.dart';
import 'package:provider/provider.dart';

class WidgetsList extends StatelessWidget {
  const WidgetsList({super.key});

  @override
  Widget build(BuildContext context) {
    final widgetsList = explorableWidgets.values.toList();

    return ListView.builder(
      itemCount: widgetsList.length,
      itemBuilder: (BuildContext context, int index) {
        final widget = widgetsList[index];
        return ListTile(
          title: Text(widget.title),
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => WidgetEditorPage(widget: widget),
            ),
          ),
        );
      },
    );
  }
}

class WidgetsListDrawer extends StatelessWidget {

  const WidgetsListDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ActiveWidgetNotifier>(
      builder: (_, activeWidgetNotifier, __) {
        final widgetsList = explorableWidgets.values.toList();
        return NavigationDrawer(
          onDestinationSelected: (index) {
            context.read<ActiveWidgetNotifier>().update(explorable: widgetsList[index]);
          },
          selectedIndex: widgetsList.indexOf(activeWidgetNotifier.explorable),
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Widgets",
                  style: context.textTheme.titleLarge,
                ),
              ),
            ),
            ...(widgetsList
                .map(
                  (e) => NavigationDrawerDestination(
                icon: const SizedBox(),
                label: Text(e.title),
              ),
            )
                .toList()),
          ],
        );
      },
    );
  }
}



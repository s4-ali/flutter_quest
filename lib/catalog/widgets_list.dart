import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quest/catalog/widgets/list_view.dart';
import 'package:flutter_quest/catalog/widgets/animated_container.dart';
import 'package:flutter_quest/catalog/widgets/appbar.dart';
import 'package:flutter_quest/catalog/widgets/card.dart';
import 'package:flutter_quest/catalog/widgets/checkbox.dart';
import 'package:flutter_quest/catalog/widgets/circle_avatar.dart';
import 'package:flutter_quest/catalog/widgets/column.dart';
import 'package:flutter_quest/catalog/widgets/container.dart';
import 'package:flutter_quest/catalog/widgets/divider.dart';
import 'package:flutter_quest/catalog/widgets/drawer.dart';
import 'package:flutter_quest/catalog/widgets/elevated_button.dart';
import 'package:flutter_quest/catalog/widgets/floating_action_button.dart';
import 'package:flutter_quest/catalog/widgets/grid_view.dart';
import 'package:flutter_quest/catalog/widgets/icon.dart';
import 'package:flutter_quest/catalog/widgets/icon_button.dart';
import 'package:flutter_quest/catalog/widgets/image.dart';
import 'package:flutter_quest/catalog/widgets/network_image.dart';
import 'package:flutter_quest/catalog/widgets/outlined_button.dart';
import 'package:flutter_quest/catalog/widgets/radio.dart';
import 'package:flutter_quest/catalog/widgets/row.dart';
import 'package:flutter_quest/catalog/widgets/sized_box.dart';
import 'package:flutter_quest/catalog/widgets/slider.dart';
import 'package:flutter_quest/catalog/widgets/stack.dart';
import 'package:flutter_quest/catalog/widgets/switch.dart';
import 'package:flutter_quest/catalog/widgets/tabbar.dart';
import 'package:flutter_quest/catalog/widgets/text.dart';
import 'package:flutter_quest/catalog/widgets/text_field.dart';
import 'package:flutter_quest/catalog/widgets/text_button.dart';
import 'package:flutter_quest/catalog/widgets/toggle_button.dart';
import 'package:flutter_quest/utils/extensions.dart';
import 'package:flutter_quest/widgets/core/editor.dart';

class WidgetsList extends StatelessWidget {
  const WidgetsList({super.key});

  @override
  Widget build(BuildContext context) {
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
  final void Function(ExplorableWidget) onWidgetSelected;
  final ExplorableWidget selectedWidget;

  const WidgetsListDrawer({
    super.key,
    required this.onWidgetSelected,
    required this.selectedWidget,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      onDestinationSelected: (index) {
        onWidgetSelected(widgetsList[index]);
      },
      selectedIndex: widgetsList.indexOf(selectedWidget),
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
  }
}

class ExplorableWidget {
  final Widget widget;
  final String title;

  const ExplorableWidget({
    required this.widget,
    required this.title,
  });
}

const widgetsList = [
  ExplorableWidget(
    title: "Container",
    widget: ContainerPropertyExplorer(),
  ),
  ExplorableWidget(
    title: "SizedBox",
    widget: SizedBoxPropertyExplorer(),
  ),
  ExplorableWidget(
    title: "TextField",
    widget: TextFieldPropertyExplorer(),
  ),
  ExplorableWidget(
    title: "Image",
    widget: ImagePropertyExplorer(),
  ),
  ExplorableWidget(
    title: "Network Image",
    widget: NetworkImagePropertyExplorer(),
  ),
  ExplorableWidget(
    title: "Circle Avatar",
    widget: CircleAvatarPropertyExplorer(),
  ),
  ExplorableWidget(
    title: "Icon",
    widget: IconPropertyExplorer(),
  ),
  ExplorableWidget(
    title: "Card",
    widget: CardPropertyExplorer(),
  ),
  ExplorableWidget(
    title: "Text",
    widget: TextPropertyExplorer(),
  ),
  ExplorableWidget(
    title: "Row",
    widget: RowPropertyExplorer(),
  ),
  ExplorableWidget(
    title: "Column",
    widget: ColumnPropertyExplorer(),
  ),
  ExplorableWidget(
    title: "Divider",
    widget: DividerPropertyExplorer(),
  ),
  ExplorableWidget(
    title: "ListView",
    widget: ListViewPropertyExplorer(),
  ),
  ExplorableWidget(
    title: "GridView",
    widget: GridViewPropertyExplorer(),
  ),
  ExplorableWidget(
    title: "Drawer",
    widget: DrawerPropertyExplorer(),
  ),
  ExplorableWidget(
    title: "TabBar",
    widget: TabBarPropertyExplorer(),
  ),
  ExplorableWidget(
    title: "Switch",
    widget: SwitchPropertyExplorer(),
  ),
  ExplorableWidget(
    title: "Slider",
    widget: SliderPropertyExplorer(),
  ),
  ExplorableWidget(
    title: "CheckBox",
    widget: CheckBoxPropertyExplorer(),
  ),
  ExplorableWidget(
    title: "AppBar",
    widget: AppBarPropertyExplorer(),
  ),
  ExplorableWidget(
    title: "Stack",
    widget: StackPropertyExplorer(),
  ),
  ExplorableWidget(
    title: "Radio",
    widget: RadioPropertyExplorer(),
  ),
  ExplorableWidget(
    title: "Toggle Button",
    widget: ToggleButtonPropertyExplorer(),
  ),
  ExplorableWidget(
    title: "Text Button",
    widget: TextButtonPropertyExplorer(),
  ),
  ExplorableWidget(
    title: "Elevated Button",
    widget: ElevatedButtonPropertyExplorer(),
  ),
  ExplorableWidget(
    title: "Outlined Button",
    widget: OutlinedButtonPropertyExplorer(),
  ),
  ExplorableWidget(
    title: "Icon Button",
    widget: IconButtonPropertyExplorer(),
  ),
  ExplorableWidget(
    title: "Floating Action Button",
    widget: FloatingActionButtonPropertyExplorer(),
  ),
  ExplorableWidget(
    title: "Animated Container",
    widget: AnimatedContainerPropertyExplorer(),
  ),
];

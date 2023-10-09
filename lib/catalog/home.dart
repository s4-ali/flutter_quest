import 'package:flutter/material.dart';
import 'package:flutter_quest/catalog/widgets/List_view.dart';
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

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blueAccent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: GridView.count(
            crossAxisCount: 6, // Number of columns in the grid
            children: const [
              SelectWidget(
                widgetName: "Container",
                toNavigate: ContainerPropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "SizedBox",
                toNavigate: SizedBoxPropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "TextField",
                toNavigate: TextFieldPropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "Image",
                toNavigate: ImagePropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "Network Image",
                toNavigate: NetworkImagePropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "Circle Avatar",
                toNavigate: CircleAvatarPropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "Icon",
                toNavigate: IconPropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "Card",
                toNavigate: CardPropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "Text",
                toNavigate: TextPropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "Row",
                toNavigate: RowPropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "Column",
                toNavigate: ColumnPropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "Divider",
                toNavigate: DividerPropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "ListView",
                toNavigate: ListViewPropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "GridView",
                toNavigate: GridViewPropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "Drawer",
                toNavigate: DrawerPropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "TabBar",
                toNavigate: TabBarPropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "Switch",
                toNavigate: SwitchPropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "Slider",
                toNavigate: SliderPropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "CheckBox",
                toNavigate: CheckBoxPropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "AppBar",
                toNavigate: AppBarPropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "Stack",
                toNavigate: StackPropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "Radio",
                toNavigate: RadioPropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "Toggle Button",
                toNavigate: ToggleButtonPropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "Text Button",
                toNavigate: TextButtonPropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "Elevated Button",
                toNavigate: ElevatedButtonPropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "Outlined Button",
                toNavigate: OutlinedButtonPropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "Icon Button",
                toNavigate: IconButtonPropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "Floating Action Button",
                toNavigate: FloatingActionButtonPropertyExplorer(),
              ),
              SelectWidget(
                widgetName: "Animated Container",
                toNavigate: AnimatedContainerPropertyExplorer(),
              ),
            ],
          ),
        ));
  }
}

class SelectWidget extends StatelessWidget {
  final Widget toNavigate;
  final String widgetName;

  const SelectWidget({
    super.key,
    required this.widgetName,
    required this.toNavigate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => toNavigate),
          );
        },
        child: Container(
          height: 162,
          width: 162,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: Colors.blue,
            border: Border.all(color: Colors.black, width: 2),
          ),
          child: Center(
            child: Text(
              widgetName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20.0, // Adjust the font size as needed
                decoration: TextDecoration.none, // Remove the underline
              ),
            ),
          ),
        ),
      ),
    );
  }
}

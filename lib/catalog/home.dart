import 'package:flutter/material.dart';
import 'package:flutter_quest/catalog/widgets_list.dart';
import 'package:flutter_quest/utils/extensions.dart';
import 'package:flutter_quest/widgets/animated_card.dart';
import 'package:flutter_quest/widgets/app_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late ExplorableWidget selectedWidget;

  @override
  void initState() {
    selectedWidget = widgetsList.first;
    super.initState();
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

  Widget buildMobile(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "Widgets"),
      body: WidgetsList(),
    );
  }

  Widget buildTablet(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Row(
          children: [
            WidgetsListDrawer(
              onWidgetSelected: (widget) {
                setState(() {
                  selectedWidget = widget;
                });
              },
              selectedWidget: selectedWidget,
            ),
            Expanded(
              child: selectedWidget.widget,
            ),
          ],
        ),
      ),
    );
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
        child: SizedBox(
          height: 250,
          width: 250,
          child: AnimatedCard(
            child: Center(
              child: Text(
                widgetName,
                textAlign: TextAlign.center,
                style: context.textTheme.titleLarge,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

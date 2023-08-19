import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_holder.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/core/scaffold.dart';

class PropertyExplorerBuilder extends StatefulWidget {
  final String widgetName;
  final Widget Function(PropertyProvider configurations) builder;

  const PropertyExplorerBuilder({
    super.key,
    required this.widgetName,
    required this.builder,
  });

  @override
  State<PropertyExplorerBuilder> createState() => _PropertyExplorerBuilderState();
}

class _PropertyExplorerBuilderState extends State<PropertyExplorerBuilder> {
  List<Widget> widgets = [];
  final PropertyProvider configurations = PropertyProvider();

  @override
  void initState() {
    super.initState();
    configurations.addListener(_onConfigurationsUpdated);
  }

  void _onConfigurationsUpdated() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    toWidget(PropertyHolder e) => e.widget;

    return WidgetEditorScaffold(
      title: widget.widgetName,
      properties: configurations.widgets.map(toWidget).toList(),
      widget: widget.builder.call(configurations),
    );
  }
}

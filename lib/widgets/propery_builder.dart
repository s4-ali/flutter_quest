
import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_holder.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/scaffold.dart';

class PropertyBuilder extends StatefulWidget {
  final String widgetName;
  final Widget Function(PropertyProvider configurations) builder;

  const PropertyBuilder({
    super.key,
    required this.widgetName,
    required this.builder,
  });

  @override
  State<PropertyBuilder> createState() => _PropertyBuilderState();
}

class _PropertyBuilderState extends State<PropertyBuilder> {
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
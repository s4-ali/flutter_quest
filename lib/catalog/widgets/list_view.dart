import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/axis_field.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/edge_insets_field.dart';
import 'package:flutter_quest/property_fields/icon_data_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class ListViewPropertyExplorer extends StatelessWidget {
  const ListViewPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "ListView",
      builder: (provider) {
        final scrollDirection = provider.axisField(
            id: "scrollDirection", title: "Scroll Direction");
        final reverse = provider.booleanField(id: "reverse", title: "Reverse");
        final initialScrollOffset = provider.doubleField(
            id: "initialScrollOffset", title: "initialScrollOffset");
        final keepScrollOffset = provider.booleanField(
            id: "keepScrollOffset", title: "keepScrollOffset");
        final debugLabel =
        provider.stringField(id: "debugLabel", title: "debugLabel");
        final primary = provider.booleanField(id: "primary", title: "Primary");
        final shrinkWrap =
        provider.booleanField(id: "shrinkWrap", title: "shrinkWrap");
        final padding =
        provider.edgeInsetsField(id: "padding", title: "Padding");
        final itemExtent = provider.doubleField(id: "itemExtent", title: "Item Extent");
        final prototypeItem = provider.iconDataField(id: "prototypeItem", title: "Prototype Item Widget");
        final addAutomaticKeepAlive = provider.booleanField(
            id: "addAutomaticKeepAlive", title: "Add Automatic Keep Alive");
        final addRepaintBoundaries = provider.booleanField(
            id: "addRepaintBoundaries", title: "Add Repaint Boundaries");
        final addSemanticIndexes = provider.booleanField(
            id: "addSemanticIndexes", title: "Add Semantic Indexes");
        final cacheExtent =
        provider.doubleField(id: "cacheExtent", title: "Cache Extent");
        final semanticChildCount = provider.intField(
            id: "semanticChildCount", title: "Semantic Child  Count");
        final dragStartBehavior = provider.listField(
            id: "dragStartBehavior",
            title: "dragStartBehavior",
            values: DragStartBehavior.values);
        final clipBehavior =
        provider.clipField(id: "clipBehavior", title: "Clip Behavior");
        final keyboardDismissBehavior = provider.listField(
            id: "keyboardDismissBehavior",
            title: "Keyboard Dismiss Behavior",
            values: ScrollViewKeyboardDismissBehavior.values);
        final restorationId =
        provider.stringField(id: "restorationId", title: "Restoration Id");

        return ListView(
          scrollDirection: scrollDirection ?? Axis.vertical,
          reverse: reverse ?? false,
          controller: ScrollController(
            initialScrollOffset: initialScrollOffset ?? 0.0,
            keepScrollOffset: keepScrollOffset ?? true,
            debugLabel: debugLabel,
            onAttach: (v) {},
            onDetach: (v) {},
          ),
          primary: primary,
          physics: const ScrollPhysics(),
          shrinkWrap: shrinkWrap ?? false,
          padding: padding,
          itemExtent: itemExtent,
          prototypeItem: Icon(prototypeItem),
          addAutomaticKeepAlives: addAutomaticKeepAlive ?? true,
          addRepaintBoundaries: addRepaintBoundaries ?? true,
          addSemanticIndexes: addSemanticIndexes ?? true,
          cacheExtent: cacheExtent,
          semanticChildCount: semanticChildCount,
          dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
          restorationId: restorationId,
          keyboardDismissBehavior: keyboardDismissBehavior ??
              ScrollViewKeyboardDismissBehavior.manual,
          clipBehavior: clipBehavior ?? Clip.hardEdge,
          children: const [],
        );
      },
    );
  }
}

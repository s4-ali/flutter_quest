import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/axis_field.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/edge_insets_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class GridViewPropertyExplorer extends StatelessWidget {
  const GridViewPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "GridView",
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
        final crossAxisCount =
            provider.intField(id: "crossAxisCount", title: "Cross Axis Count");
        final crossAxisSpacing = provider.doubleField(
            id: "crossAxisSpacing", title: "Cross Axis Spacing");
        final mainAxisSpacing = provider.doubleField(
            id: "mainAxisSpacing", title: "Main Axis Spacing");
        final mainAxisExtent = provider.doubleField(
            id: "mainAxisExtent", title: "Main Axis Extent");

        final addAutomaticKeepAlives = provider.booleanField(
            id: "addAutomaticKeepAlives", title: "Add Automatic Keep Alives");
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

        return (
          widget: GridView(
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
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount ?? 2,
              crossAxisSpacing: crossAxisSpacing ?? 10.0,
              mainAxisSpacing: mainAxisSpacing ?? 10.0,
              mainAxisExtent: mainAxisExtent,
            ),
            addAutomaticKeepAlives: addAutomaticKeepAlives ?? true,
            addRepaintBoundaries: addRepaintBoundaries ?? true,
            addSemanticIndexes: addSemanticIndexes ?? true,
            cacheExtent: cacheExtent,
            semanticChildCount: semanticChildCount,
            dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
            clipBehavior: clipBehavior ?? Clip.hardEdge,
            keyboardDismissBehavior: keyboardDismissBehavior ??
                ScrollViewKeyboardDismissBehavior.manual,
            restorationId: restorationId,
            children: [],
          ),
          code: "GridView code goes here...",
        );
      },
    );
  }
}

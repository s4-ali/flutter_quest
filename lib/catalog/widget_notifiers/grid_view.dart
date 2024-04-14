import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/axis_field.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/edge_insets_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';

typedef GridViewProperties = ({
  ValueHolder<Axis?> scrollDirection,
  ValueHolder<bool?> reverse,
  ValueHolder<double?> initialScrollOffset,
  ValueHolder<bool?> keepScrollOffset,
  ValueHolder<String?> debugLabel,
  ValueHolder<bool?> primary,
  ValueHolder<bool?> shrinkWrap,
  ValueHolder<EdgeInsets?> padding,
  ValueHolder<int?> crossAxisCount,
  ValueHolder<double?> crossAxisSpacing,
  ValueHolder<double?> mainAxisSpacing,
  ValueHolder<double?> mainAxisExtent,
  ValueHolder<bool?> addAutomaticKeepAlives,
  ValueHolder<bool?> addRepaintBoundaries,
  ValueHolder<bool?> addSemanticIndexes,
  ValueHolder<double?> cacheExtent,
  ValueHolder<int?> semanticChildCount,
  ValueHolder<DragStartBehavior?> dragStartBehavior,
  ValueHolder<Clip?> clipBehavior,
  ValueHolder<ScrollViewKeyboardDismissBehavior?> keyboardDismissBehavior,
  ValueHolder<String?> restorationId,
});

class GridViewPropertiesNotifier
    extends PropertiesNotifier<GridViewProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return GridView(
      scrollDirection: fieldValues.scrollDirection.isSet? fieldValues.scrollDirection.value! : Axis.vertical,
      reverse: fieldValues.reverse.isSet? fieldValues.reverse.value! : false,
      controller: ScrollController(
        initialScrollOffset: fieldValues.initialScrollOffset.isSet? fieldValues.initialScrollOffset.value! : 0.0,
        keepScrollOffset: fieldValues.keepScrollOffset.isSet? fieldValues.keepScrollOffset.value! : true,
        debugLabel: fieldValues.debugLabel.isSet? fieldValues.debugLabel.value : null,
        onAttach: (v) {},
        onDetach: (v) {},
      ),
      primary: fieldValues.primary.isSet? fieldValues.primary.value : null,
      physics: const ScrollPhysics(),
      shrinkWrap: fieldValues.shrinkWrap.isSet? fieldValues.shrinkWrap.value! : false,
      padding: fieldValues.padding.isSet? fieldValues.padding.value : null,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: fieldValues.crossAxisCount.isSet? fieldValues.crossAxisCount.value! :  2,
        crossAxisSpacing: fieldValues.crossAxisSpacing.isSet? fieldValues.crossAxisSpacing.value! : 10.0,
        mainAxisSpacing: fieldValues.mainAxisSpacing.isSet? fieldValues.mainAxisSpacing.value! : 10.0,
        mainAxisExtent: fieldValues.mainAxisExtent.isSet? fieldValues.mainAxisExtent.value : null,
      ),
      addAutomaticKeepAlives: fieldValues.addAutomaticKeepAlives.isSet? fieldValues.addAutomaticKeepAlives.value! : true,
      addRepaintBoundaries: fieldValues.addRepaintBoundaries.isSet? fieldValues.addRepaintBoundaries.value! : true,
      addSemanticIndexes: fieldValues.addSemanticIndexes.isSet? fieldValues.addSemanticIndexes.value! : true,
      cacheExtent: fieldValues.cacheExtent.isSet? fieldValues.cacheExtent.value : null,
      semanticChildCount: fieldValues.semanticChildCount.isSet? fieldValues.semanticChildCount.value : null,
      dragStartBehavior:fieldValues.dragStartBehavior.isSet? fieldValues.dragStartBehavior.value! : DragStartBehavior.start,
      clipBehavior: fieldValues.clipBehavior.isSet? fieldValues.clipBehavior.value! : Clip.hardEdge,
      keyboardDismissBehavior: fieldValues.keyboardDismissBehavior.isSet? fieldValues.keyboardDismissBehavior.value! : ScrollViewKeyboardDismissBehavior.manual,
      restorationId: fieldValues.restorationId.isSet? fieldValues.restorationId.value : null,
      children: const [],
    );
  }

  @override
  String get code => '''
GridView(
  scrollDirection: ${fieldValues.scrollDirection} ?? Axis.vertical,
  reverse: ${fieldValues.reverse} ?? false,
  controller: ScrollController(
    initialScrollOffset: ${fieldValues.initialScrollOffset} ?? 0.0,
    keepScrollOffset: ${fieldValues.keepScrollOffset} ?? true,
    debugLabel: ${fieldValues.debugLabel},
    onAttach: (v) {},
    onDetach: (v) {},
  ),
  primary: ${fieldValues.primary},
  physics: const ScrollPhysics(),
  shrinkWrap: ${fieldValues.shrinkWrap} ?? false,
  padding: ${fieldValues.padding},
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: ${fieldValues.crossAxisCount} ?? 2,
    crossAxisSpacing: ${fieldValues.crossAxisSpacing} ?? 10.0,
    mainAxisSpacing: ${fieldValues.mainAxisSpacing} ?? 10.0,
    mainAxisExtent: ${fieldValues.mainAxisExtent},
  ),
  addAutomaticKeepAlives: ${fieldValues.addAutomaticKeepAlives} ?? true,
  addRepaintBoundaries: ${fieldValues.addRepaintBoundaries} ?? true,
  addSemanticIndexes: ${fieldValues.addSemanticIndexes} ?? true,
  cacheExtent: ${fieldValues.cacheExtent},
  semanticChildCount: ${fieldValues.semanticChildCount},
  dragStartBehavior: ${fieldValues.dragStartBehavior} ?? DragStartBehavior.start,
  clipBehavior: ${fieldValues.clipBehavior} ?? Clip.hardEdge,
  keyboardDismissBehavior: ${fieldValues.keyboardDismissBehavior} ??
      ScrollViewKeyboardDismissBehavior.manual,
  restorationId: ${fieldValues.restorationId},
  children: const [],
)
''';

  @override
  GridViewProperties get fieldValues => (
        scrollDirection: getValueOf('scrollDirection'),
        reverse: getValueOf('reverse'),
        initialScrollOffset: getValueOf('initialScrollOffset'),
        keepScrollOffset: getValueOf('keepScrollOffset'),
        debugLabel: getValueOf('debugLabel'),
        primary: getValueOf('primary'),
        shrinkWrap: getValueOf('shrinkWrap'),
        padding: getValueOf('padding'),
        crossAxisCount: getValueOf('crossAxisCount'),
        crossAxisSpacing: getValueOf('crossAxisSpacing'),
        mainAxisSpacing: getValueOf('mainAxisSpacing'),
        mainAxisExtent: getValueOf('mainAxisExtent'),
        addAutomaticKeepAlives: getValueOf('addAutomaticKeepAlives'),
        addRepaintBoundaries: getValueOf('addRepaintBoundaries'),
        addSemanticIndexes: getValueOf('addSemanticIndexes'),
        cacheExtent: getValueOf('cacheExtent'),
        semanticChildCount: getValueOf('semanticChildCount'),
        dragStartBehavior: getValueOf('dragStartBehavior'),
        clipBehavior: getValueOf('clipBehavior'),
        keyboardDismissBehavior: getValueOf('keyboardDismissBehavior'),
        restorationId: getValueOf('restorationId'),
      );

  @override
  void registerFields() {
    axisField(id: "scrollDirection", title: "Scroll Direction");
    booleanField(id: "reverse", title: "Reverse");
    doubleField(id: "initialScrollOffset", title: "Initial Scroll Offset");
    booleanField(id: "keepScrollOffset", title: "Keep Scroll Offset");
    stringField(id: "debugLabel", title: "Debug Label");
    booleanField(id: "primary", title: "Primary");
    booleanField(id: "shrinkWrap", title: "Shrink Wrap");
    edgeInsetsField(id: "padding", title: "Padding");
    intField(id: "crossAxisCount", title: "Cross Axis Count");
    doubleField(id: "crossAxisSpacing", title: "Cross Axis Spacing");
    doubleField(id: "mainAxisSpacing", title: "Main Axis Spacing");
    doubleField(id: "mainAxisExtent", title: "Main Axis Extent");
    booleanField(
        id: "addAutomaticKeepAlives", title: "Add Automatic Keep Alives");
    booleanField(id: "addRepaintBoundaries", title: "Add Repaint Boundaries");
    booleanField(id: "addSemanticIndexes", title: "Add Semantic Indexes");
    doubleField(id: "cacheExtent", title: "Cache Extent");
    intField(id: "semanticChildCount", title: "Semantic Child Count");
    listField(
      id: "dragStartBehavior",
      title: "Drag Start Behavior",
      values: DragStartBehavior.values,
    );
    clipField(id: "clipBehavior", title: "Clip Behavior");
    listField(
      id: "keyboardDismissBehavior",
      title: "Keyboard Dismiss Behavior",
      values: ScrollViewKeyboardDismissBehavior.values,
    );
    stringField(id: "restorationId", title: "Restoration Id");
  }
}

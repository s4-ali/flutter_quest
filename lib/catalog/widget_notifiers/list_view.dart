import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/axis_field.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/edge_insets_field.dart';
import 'package:flutter_quest/property_fields/icon_data_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';

typedef ListViewProperties = ({
  ValueHolder<Axis?> scrollDirection,
  ValueHolder<bool?> reverse,
  ValueHolder<double?> initialScrollOffset,
  ValueHolder<bool?> keepScrollOffset,
  ValueHolder<String?> debugLabel,
  ValueHolder<bool?> primary,
  ValueHolder<bool?> shrinkWrap,
  ValueHolder<EdgeInsets?> padding,
  ValueHolder<double?> itemExtent,
  ValueHolder<IconData?> prototypeItem,
  ValueHolder<bool?> addAutomaticKeepAlive,
  ValueHolder<bool?> addRepaintBoundaries,
  ValueHolder<bool?> addSemanticIndexes,
  ValueHolder<double?> cacheExtent,
  ValueHolder<int?> semanticChildCount,
  ValueHolder<DragStartBehavior?> dragStartBehavior,
  ValueHolder<Clip?> clipBehavior,
  ValueHolder<ScrollViewKeyboardDismissBehavior?> keyboardDismissBehavior,
  ValueHolder<String?> restorationId,
});

class ListViewPropertiesNotifier extends PropertiesNotifier<ListViewProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return ListView(
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
      itemExtent: fieldValues.itemExtent.isSet? fieldValues.itemExtent.value : null,
      prototypeItem: Icon(fieldValues.prototypeItem.isSet? fieldValues.prototypeItem.value : null,),
      addAutomaticKeepAlives: fieldValues.addAutomaticKeepAlive.isSet? fieldValues.addAutomaticKeepAlive.value! : true,
      addRepaintBoundaries: fieldValues.addRepaintBoundaries.isSet? fieldValues.addRepaintBoundaries.value! : true,
      addSemanticIndexes: fieldValues.addSemanticIndexes.isSet? fieldValues.addSemanticIndexes.value! : true,
      cacheExtent: fieldValues.cacheExtent.isSet? fieldValues.cacheExtent.value : null,
      semanticChildCount: fieldValues.semanticChildCount.isSet? fieldValues.semanticChildCount.value : null,
      dragStartBehavior:
      fieldValues.dragStartBehavior.isSet? fieldValues.dragStartBehavior.value! : DragStartBehavior.start,
      restorationId: fieldValues.restorationId.isSet? fieldValues.restorationId.value : null,
      keyboardDismissBehavior: fieldValues.keyboardDismissBehavior.isSet? fieldValues.keyboardDismissBehavior.value! : ScrollViewKeyboardDismissBehavior.manual,
      clipBehavior: fieldValues.clipBehavior.isSet? fieldValues.clipBehavior.value! : Clip.hardEdge,
      children: const [],
    );
  }

  @override
  String get code => '''
ListView(
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
  itemExtent: ${fieldValues.itemExtent},
  prototypeItem: Icon(${fieldValues.prototypeItem}),
  addAutomaticKeepAlives: ${fieldValues.addAutomaticKeepAlive} ?? true,
  addRepaintBoundaries: ${fieldValues.addRepaintBoundaries} ?? true,
  addSemanticIndexes: ${fieldValues.addSemanticIndexes} ?? true,
  cacheExtent: ${fieldValues.cacheExtent},
  semanticChildCount: ${fieldValues.semanticChildCount},
  dragStartBehavior: ${fieldValues.dragStartBehavior} ?? DragStartBehavior.start,
  restorationId: ${fieldValues.restorationId},
  keyboardDismissBehavior: ${fieldValues.keyboardDismissBehavior} ??
      ScrollViewKeyboardDismissBehavior.manual,
  clipBehavior: ${fieldValues.clipBehavior} ?? Clip.hardEdge,
  children: const [],
)
''';

  @override
  ListViewProperties get fieldValues => (
        scrollDirection: getValueOf('scrollDirection'),
        reverse: getValueOf('reverse'),
        initialScrollOffset: getValueOf('initialScrollOffset'),
        keepScrollOffset: getValueOf('keepScrollOffset'),
        debugLabel: getValueOf('debugLabel'),
        primary: getValueOf('primary'),
        shrinkWrap: getValueOf('shrinkWrap'),
        padding: getValueOf('padding'),
        itemExtent: getValueOf('itemExtent'),
        prototypeItem: getValueOf('prototypeItem'),
        addAutomaticKeepAlive: getValueOf('addAutomaticKeepAlive'),
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
    doubleField(id: "initialScrollOffset", title: "initialScrollOffset");
    booleanField(id: "keepScrollOffset", title: "keepScrollOffset");
    stringField(id: "debugLabel", title: "debugLabel");
    booleanField(id: "primary", title: "Primary");
    booleanField(id: "shrinkWrap", title: "shrinkWrap");
    edgeInsetsField(id: "padding", title: "Padding");
    doubleField(id: "itemExtent", title: "Item Extent");
    iconDataField(id: "prototypeItem", title: "Prototype Item Widget");
    booleanField(
        id: "addAutomaticKeepAlive", title: "Add Automatic Keep Alive");
    booleanField(id: "addRepaintBoundaries", title: "Add Repaint Boundaries");
    booleanField(id: "addSemanticIndexes", title: "Add Semantic Indexes");
    doubleField(id: "cacheExtent", title: "Cache Extent");
    intField(id: "semanticChildCount", title: "Semantic Child  Count");
    listField(
      id: "dragStartBehavior",
      title: "dragStartBehavior",
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

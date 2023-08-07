import 'package:flutter/widgets.dart';

extension PropertyHolderListExtension on List<PropertyHolder> {
  void update(PropertyHolder property) {
    final widget = firstWhere((element) => element.id == property.id);
    final index = indexOf(widget);
    remove(widget);
    insert(
      index,
      property,
    );
  }
}

class PropertyHolder {
  final String id;
  final Widget widget;

  const PropertyHolder({
    required this.id,
    required this.widget,
  });
}

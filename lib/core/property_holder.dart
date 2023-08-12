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

  bool alreadyExists(String id) {
    return where((element) => element.id == id).isNotEmpty;
  }
}

class PropertyHolder<T> {
  final String id;
  final Widget widget;
  final Function(T) onChanged;

  const PropertyHolder({
    required this.id,
    required this.widget,
    required this.onChanged,
  });
}

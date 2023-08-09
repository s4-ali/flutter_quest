import 'package:flutter_quest/widgets/pickers/number_range.dart';

import 'property_holder.dart';

class PropertyProvider {
  final List<void Function()> _listeners = [];
  final List<PropertyHolder> widgets = [];
  final Map<String, dynamic> values = {};

  void addListener(void Function() listener) {
    if (!_listeners.contains(listener)) {
      _listeners.add(listener);
    }
  }

  void notifyListeners() {
    for (final listener in _listeners) {
      listener();
    }
  }

  double heightRange({String? id}) {
    return numberRange(id: id ?? 'height', title: "Height", max: 1000)
        .toDouble();
  }

  double widthRange({String? id}) {
    return numberRange(id: id ?? 'width', title: "Width", max: 1000).toDouble();
  }

  num numberRange({
    required String id,
    required String title,
    required num max,
    num min = 0,
    num initial = 100,
  }) {
    if (widgets.where((element) => element.id == id).isNotEmpty) {
      return getValueOf(id, initial);
    }

    PropertyHolder buildWidget(Function(num) onChanged) {
      return PropertyHolder(
        id: id,
        widget: NumberRangePicker(
          title: title,
          max: max,
          min: min,
          value: getValueOf(id, initial),
          onChanged: onChanged,
        ),
      );
    }

    void onNumberChanged(num number) {
      values[id] = number.toDouble();
      widgets.update(buildWidget(onNumberChanged));
      notifyListeners();
    }

    widgets.add(buildWidget(onNumberChanged));
    Future.delayed(const Duration(milliseconds: 100), notifyListeners);
    return values[id];
  }

  dynamic getValueOf(String id, dynamic initial) {
    if (values[id] == null) {
      values[id] = initial;
    }
    return values[id];
  }
}


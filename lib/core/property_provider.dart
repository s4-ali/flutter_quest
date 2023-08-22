import 'package:flutter/cupertino.dart';

import '../widgets/field_title.dart';
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

  dynamic getValueOf(String id, dynamic initial) {
    if (values[id] == null) {
      values[id] = initial;
    }
    return values[id];
  }

  void setInitialValue(String id, value) {
    if (values.keys.contains(id)) return;
    values[id] = value;
  }
}

class PropertyParams<T> {
  final String id;
  final String title;
  final T? value;
  final T defaultValue;
  final bool isOptional;

  PropertyParams({
    required this.id,
    required this.title,
    required this.defaultValue,
    this.isOptional = true,
    this.value,
  });
}

abstract class PropertyField<T extends PropertyParams, U> {
  final PropertyProvider _provider;
  final T params;

  bool get inline => false;

  PropertyField(this._provider, this.params);

  Widget build(T params, Function(U?) onChanged, U? value);

  U? call() {
    _provider.setInitialValue(params.id, params.value);

    if (_provider.widgets.alreadyExists(params.id)) {
      return _provider.getValueOf(
          params.id, params.isOptional ? null : params.value);
    }

    PropertyHolder buildPropertyField(Function(U?) onChanged) {
      final value = _provider.getValueOf(
          params.id, params.isOptional ? null : params.value);
      return PropertyHolder<U>(
        id: params.id,
        widget: FieldTitle(
          params: params,
          onChanged: (val) => onChanged(val as U?),
          inline: inline,
          child: value == null
              ? null
              : build(
                  params,
                  onChanged,
                  value,
                ),
        ),
      );
    }

    void onValueUpdated(U? newValue) {
      _provider.values[params.id] = newValue;
      _provider.widgets.update(buildPropertyField(onValueUpdated));
      _provider.notifyListeners();
    }

    _provider.widgets.add(buildPropertyField(onValueUpdated));
    Future.delayed(
      const Duration(milliseconds: 100),
      _provider.notifyListeners,
    );
    return _provider.values[params.id];
  }
}

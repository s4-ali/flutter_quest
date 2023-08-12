import 'package:flutter/cupertino.dart';

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
}

class PropertyParams<T> {
  final String id;
  final String title;
  final T initial;

  PropertyParams({
    required this.id,
    required this.initial,
    required this.title,
  });
}

abstract class PropertyField<T extends PropertyParams, U> {
  final PropertyProvider _provider;
  final T params;

  PropertyField(this._provider, this.params);

  Widget build(T params, Function(U) onChanged, U value);

  U call() {
    if (_provider.widgets.alreadyExists(params.id)) {
      return _provider.getValueOf(params.id, params.initial);
    }

    PropertyHolder buildPropertyField(Function(U) onChanged) {
      return PropertyHolder<U>(
        id: params.id,
        onChanged: onChanged,
        widget: build(
          params,
          onChanged,
          _provider.getValueOf(params.id, params.initial),
        ),
      );
    }

    void onValueUpdated(U newValue) {
      _provider.values[params.id] = newValue;
      _provider.widgets.update(buildPropertyField(onValueUpdated));
      _provider.notifyListeners();
    }

    _provider.widgets.add(buildPropertyField(onValueUpdated));
    Future.delayed(
        const Duration(milliseconds: 100), _provider.notifyListeners);
    return _provider.values[params.id];
  }
}

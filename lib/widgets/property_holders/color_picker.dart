import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_holder.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/pickers/color_picker.dart';

class ColorPickerPropertyHolder extends PropertyHolder<Color> {
  ColorPickerPropertyHolder({
    required super.id,
    required Color value,
    required super.onChanged,
    required String title,
  }):super(widget: ColorSelector(selectedColor: value, onColorUpdated: onChanged, title: title,));
}

extension ColorPickerPropertyProvider on PropertyProvider{
  Color color({required String id, required String title, Color initial = Colors.red, }){
    if (widgets.alreadyExists(id)) {
      return getValueOf(id, initial);
    }

    PropertyHolder buildPropertyField(Function(Color) onChanged) {
      return ColorPickerPropertyHolder(
        id: id,
        value: getValueOf(id, initial),
        onChanged: onChanged, title: title,
      );
    }

    void onColorChanged(Color newColor) {
      values[id] = newColor;
      widgets.update(buildPropertyField(onColorChanged));
      notifyListeners();
    }

    widgets.add(buildPropertyField(onColorChanged));
    Future.delayed(const Duration(milliseconds: 100), notifyListeners);
    return values[id];
  }
}

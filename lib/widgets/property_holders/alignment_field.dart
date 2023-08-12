import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_holder.dart';
import 'package:flutter_quest/core/property_provider.dart';

class AlignmentPropertyHolder extends PropertyHolder<Alignment> {
  AlignmentPropertyHolder({
    required super.id,
    required Alignment value,
    required super.onChanged,
    String title = "Alignment",
  }) : super(
          widget: Column(
            children: [
              Text(title),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => onChanged(Alignment.centerLeft),
                    child: Container(
                      height: 25,
                      width: 25,
                      color: Colors.blue,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => onChanged(Alignment.centerRight),
                    child: Container(
                      height: 25,
                      width: 25,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
}


extension AlignmentPropertyProvider on PropertyProvider{
  Alignment alignment({
    required String id,
    required String title,
    Alignment initial = Alignment.center,
  }) {
    if (widgets.alreadyExists(id)) {
      return getValueOf(id, initial);
    }

    PropertyHolder buildPropertyField(Function(Alignment) onChanged) {
      return AlignmentPropertyHolder(
        id: id,
        value: getValueOf(id, initial),
        onChanged: onChanged, title: title,
      );
    }

    void onNumberChanged(Alignment newAlignment) {
      values[id] = newAlignment;
      widgets.update(buildPropertyField(onNumberChanged));
      notifyListeners();
    }

    widgets.add(buildPropertyField(onNumberChanged));
    Future.delayed(const Duration(milliseconds: 100), notifyListeners);
    return values[id];
  }
}
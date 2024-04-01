import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';
import 'package:flutter_quest/widgets/dropdown_button.dart';

class ListField<T> extends PropertyWidget<T> {
  final List<T> values;
  final String Function(T)? titleBuilder;

  const ListField({
    super.key,
    required super.onChanged,
    required this.values,
    required super.value,
    this.titleBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return AppDropDownButton<T>(
      selectedOption: value,
      items: values.map((T item) {
        return DropdownMenuItem<T>(
          value: item,
          enabled: true,
          child: Text(
            titleBuilder == null ? item.toString() : titleBuilder!(item),
          ),
        );
      }).toList(),
      onChanged: (val) {
        if (val != null) {
          onChanged(val);
        }
      },
      width: double.maxFinite,
    );
  }
}

class ListPreviewer extends StatelessWidget {
  const ListPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<String>(
      title: "List",
      values: const [
        "ABC",
        "DEF",
        "GHI",
        "JKL",
        "MNO",
        "PQR",
        "RST",
        "UVW",
        "XYZ"
      ],
      propertyBuilder: (onChanged, value) {
        return ListField(
          onChanged: onChanged,
          value: value,
          values: const [
            "ABC",
            "DEF",
            "GHI",
            "JKL",
            "MNO",
            "PQR",
            "RST",
            "UVW",
            "XYZ"
          ],
        );
      },
    );
  }
}

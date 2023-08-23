import 'package:flutter/material.dart';

class DropDownField<T> extends StatelessWidget {
  final Function(T?) onChanged;
  final T? initial;
  final List<T> values;

  DropDownField({
    super.key,
    required this.onChanged,
    required this.values,
    required this.initial
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: initial,
      alignment: AlignmentDirectional.center,
      icon: const SizedBox(),
      borderRadius: BorderRadius.circular(8),
      decoration: const InputDecoration(
        filled: true,
        isDense: true,
        contentPadding: EdgeInsets.only(left: 14, top: 12, bottom: 12),
        fillColor: Color(0xFF36343B),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(
            color: Color(0xFF3772FF),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(
            color: Color(0xFFF2F4F7),
            width: 1,
          ),
        ),
      ),
      items: values.map((T item) {
        return DropdownMenuItem(
          value: item,
          enabled: true,
          child: Text(item.toString()),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}

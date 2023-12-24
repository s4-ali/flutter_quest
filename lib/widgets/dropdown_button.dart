import 'package:flutter/material.dart';

class AppDropDownButton<T> extends StatefulWidget {
  final void Function(T) onChanged;
  final T selectedOption;
  final List<DropdownMenuItem<T>> items;
  final double? width;

  const AppDropDownButton({
    super.key,
    required this.selectedOption,
    required this.items,
    required this.onChanged,
    this.width,
  });

  @override
  State<AppDropDownButton<T>> createState() => _AppDropDownButtonState();
}

class _AppDropDownButtonState<T> extends State<AppDropDownButton<T>> {
  late T _selectedOption;
  bool isHovered = false;

  @override
  void initState() {
    _selectedOption = widget.selectedOption;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      icon: const Icon(Icons.keyboard_arrow_down),
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
      ),
      alignment: Alignment.centerLeft,
      value: _selectedOption,
      onChanged: (value) {
        if(value == null) return;
        setState(() {
          _selectedOption = value;
        });
        widget.onChanged(value);
      },
      items: widget.items,
    );
  }
}


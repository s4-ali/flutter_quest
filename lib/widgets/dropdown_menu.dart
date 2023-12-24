import 'package:flutter/material.dart';

class AppDropDownMenu<T> extends StatefulWidget {
  final void Function(T) onChanged;
  final T selectedOption;
  final List<DropdownMenuEntry<T>> items;
  final double? width;
  final IconData? leadingIcon;

  const AppDropDownMenu({
    super.key,
    required this.selectedOption,
    required this.items,
    required this.onChanged,
    this.leadingIcon,
    this.width,
  });

  @override
  State<AppDropDownMenu<T>> createState() => _AppDropDownMenuState();
}

class _AppDropDownMenuState<T> extends State<AppDropDownMenu<T>> {
  late T _selectedOption;
  bool isHovered = false;

  @override
  void initState() {
    _selectedOption = widget.selectedOption;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return DropdownMenu<T>(
          width: widget.width ?? constraints.maxWidth,
          enableSearch: false,
          enableFilter: false,
          initialSelection: _selectedOption,
          leadingIcon:
              widget.leadingIcon == null ? null : Icon(widget.leadingIcon!),
          onSelected: (value) {
            if (value == null) return;
            setState(() {
              _selectedOption = value;
            });
            widget.onChanged(value);
          },
          dropdownMenuEntries: widget.items,
        );
      },
    );
  }
}

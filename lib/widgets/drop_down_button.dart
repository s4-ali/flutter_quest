import 'package:flutter/material.dart';

class AppDropDownButton extends StatefulWidget {
  final void Function(dynamic) onChanged;
  final dynamic selectedOption;
  final List<DropdownMenuItem> items;
  final double? width;

  const AppDropDownButton({
    super.key,
    required this.selectedOption,
    required this.items,
    required this.onChanged,
    this.width,
  });

  @override
  State<AppDropDownButton> createState() => _AppDropDownButtonState();
}

class _AppDropDownButtonState extends State<AppDropDownButton> {
  dynamic _selectedOption;
  bool isHovered = false;

  @override
  void initState() {
    _selectedOption = widget.selectedOption;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Border buttonBorder = Border.all(
      width: 1.0,
      color: isHovered ? const Color(0xFF0099FF) : const Color(0xFF35363A),
    );

    return MouseRegion(
      onEnter: (v) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (v) {
        setState(() {
          isHovered = false;
        });
      },
      child: Container(
          height: 30,
          width: widget.width?? 155,
          padding: const EdgeInsets.only(left: 5),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: const BorderRadius.all(Radius.circular(6.0)),
            border: buttonBorder,
          ),
          child: DropdownButton(
            icon: const Icon(Icons.keyboard_arrow_down),
            iconSize: 12,
            padding: const EdgeInsets.only(right: 10),
            iconEnabledColor: const Color(0xFFFFFFFF),
            isExpanded: true,
            focusColor: Colors.transparent,
            underline: const SizedBox(),
            alignment: Alignment.centerLeft,
            value: _selectedOption,
            onChanged: (value) {
              setState(() {
                _selectedOption = value;
              });
              widget.onChanged(value);
            },
            items: widget.items,
          )),
    );
  }
}


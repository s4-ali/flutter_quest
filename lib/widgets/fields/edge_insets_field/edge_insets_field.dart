import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/fields/edge_insets_field/edge_insets_types_layout.dart';

enum EdgeInsetsType {
  all,
  only,
  symmetric,
}

class EdgeInsetsField extends PropertyWidget<EdgeInsets> {
  const EdgeInsetsField(
      {super.key, required super.onChanged, required super.value});

  @override
  Widget build(BuildContext context) {
    return _EdgeInsetsField(
      key: key,
      onChanged: (value) => onChanged(ValueHolder(value, true)),
      value: value,
    );
  }
}

class _EdgeInsetsField extends StatefulWidget {
  final void Function(EdgeInsets) onChanged;
  final EdgeInsets value;

  const _EdgeInsetsField(
      {super.key, required this.onChanged, required this.value});

  @override
  State<_EdgeInsetsField> createState() => _EdgeInsetsFieldState();
}

class _EdgeInsetsFieldState extends State<_EdgeInsetsField> {
  EdgeInsetsType selectedOption = EdgeInsetsType.all;
  late Widget selectedLayout;
  bool isHovered = false;

  @override
  void initState() {
    super.initState();
    selectedLayout = AllEdgeInsetsLayout(
      onChanged: widget.onChanged,
      value: widget.value,
    );
  }

  @override
  Widget build(BuildContext context) {
    Border buttonBorder = Border.all(
      width: 1.0,
      color: isHovered ? const Color(0xFF0099FF) : const Color(0xFF35363A),
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MouseRegion(
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
            width: 134,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: const BorderRadius.all(Radius.circular(6.0)),
              border: buttonBorder,
            ),
            child: DropdownButton<EdgeInsetsType>(
              icon: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(Icons.keyboard_arrow_down),
              ),
              iconSize: 12,
              iconEnabledColor: const Color(0xFFFFFFFF),
              focusColor: Colors.transparent,
              underline: const SizedBox(),
              alignment: Alignment.centerLeft,
              value: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                });
              },
              items: [
                DropdownMenuItem<EdgeInsetsType>(
                  onTap: () {
                    selectedLayout = AllEdgeInsetsLayout(
                      onChanged: widget.onChanged,
                      value: widget.value,
                    );
                  },
                  value: EdgeInsetsType.all,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 3),
                    child: Text("All"),
                  ),
                ),
                DropdownMenuItem<EdgeInsetsType>(
                  onTap: () {
                    selectedLayout = SymmetricEdgeInsetsLayout(
                        onChanged: widget.onChanged, value: widget.value);
                  },
                  value: EdgeInsetsType.symmetric,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 5),
                    child: Text("Symmetric"),
                  ),
                ),
                DropdownMenuItem<EdgeInsetsType>(
                  onTap: () {
                    selectedLayout = OnlyEdgeInsetsLayout(
                        onChanged: widget.onChanged, value: widget.value);
                  },
                  value: EdgeInsetsType.only,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 5),
                    child: Text("Only"),
                  ),
                ),
              ],
            ),
          ),
        ),
        selectedLayout,
      ],
    );
  }
}

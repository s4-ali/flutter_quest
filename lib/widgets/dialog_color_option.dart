import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';

class AppDialogColor extends StatelessWidget {

  final void Function(Color) onChanged;
  final Color value;

  const AppDialogColor({super.key, required this.onChanged, required this.value});

  @override
  Widget build(BuildContext context) {
    return _ColorOptionBox(
      fillColor: value,
      onUpdated: (color) async {
        final newColor = await showColorPickerDialog(
          context,
          color,
          pickersEnabled: {
            ColorPickerType.wheel: true,
            ColorPickerType.accent: false,
            ColorPickerType.primary: false,
          },
          title: const Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              "Pick Color",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          enableShadesSelection: false,
          padding: const EdgeInsets.only(
              bottom: 32, left: 16, right: 16, top: 16),
          actionButtons: const ColorPickerActionButtons(
            okButton: true,
            closeButton: true,
            dialogActionButtons: false,
            dialogActionIcons: true,
          ),
          backgroundColor: const Color(0xFF000000),
        );
        onChanged(newColor);
      },
    );
  }
}

class _ColorOptionBox extends StatefulWidget {
  final Function(Color)? onUpdated;
  final Color fillColor;

  final bool isSelected;

  const _ColorOptionBox({
    required this.fillColor,
    this.isSelected = false,
    this.onUpdated,
  });

  @override
  State<_ColorOptionBox> createState() => _ColorOptionBoxState();
}

class _ColorOptionBoxState extends State<_ColorOptionBox> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onUpdated?.call(widget.fillColor),
      onHover: (value) {
        setState(() {
          isHovering = value;
        });
      },
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: widget.fillColor,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            color: isHovering
                ? ((widget.fillColor.computeLuminance() > 0.179)
                ? Colors.black
                : Colors.white)
                .withOpacity(0.3)
                : Colors.transparent,
          ),
          child: widget.isSelected
              ? const Center(
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: 16,
            ),
          )
              : const SizedBox(),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';
import 'package:flutter_quest/widgets/text_field.dart';
import 'package:flex_color_picker/flex_color_picker.dart';

List<Color> _commonColorList = [
  const Color(0xFFF44236),
  const Color(0xFFE91E63),
  const Color(0xFF9C27B0),
  const Color(0xFF6739B7),
  const Color(0xFF3F51B5),
  const Color(0xFF2396F3),
  const Color(0xFF04A9F4),
  const Color(0xFF00BCD4),
  const Color(0xFF039588),
  const Color(0xFF4CAE50),
  const Color(0xFF8BC34A),
  const Color(0xFFCCDC39),
  const Color(0xFFFFEB3B),
  const Color(0xFFFFC107),
  const Color(0xFFFE9700),
  const Color(0xFFFF5622),
  const Color(0xFF795548),
  const Color(0xFF617C8B),
  const Color(0xFF617C8B),
  const Color(0xFF9E9E9E),
];

class ColorField extends PropertyWidget<Color> {
  const ColorField({
    super.key,
    required super.value,
    required super.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return _ColorField(onChanged: onChanged, value: value);
  }
}

class _ColorField extends StatelessWidget {
  final void Function(Color) onChanged;
  final Color value;

  _ColorField({
    required this.onChanged,
    required this.value,
  });

  final TextEditingController opacityTextEditingController =
      TextEditingController(text: "100");

  @override
  Widget build(BuildContext context) {
    final textFieldValue =
        value.value.toRadixString(16).substring(2).toUpperCase();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: _ColorOptionBox(
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
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 30,
                child: AppTextField(
                  controller: TextEditingController(text: textFieldValue),
                  contentPadding: const EdgeInsets.only(left: 8),
                  suffixIcon: Container(
                    width: 65,
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          width: 1,
                          color: Color(0xff35363A),
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 7.5),
                      child: TextField(
                        controller: opacityTextEditingController,
                        onChanged: (value) {
                          try {
                            final intValue = int.parse(value);
                            if (intValue > 100) {
                              opacityTextEditingController.text = "100";
                              return;
                            }
                            onChanged(this.value.withOpacity(intValue / 100));
                          } catch (e) {
                            opacityTextEditingController.text = "100";
                          }
                        },
                        textAlign: TextAlign.right,
                        textAlignVertical: TextAlignVertical.center,
                        maxLines: 1,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          isDense: true,
                          suffix: Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: Text("%"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  onChanged: (value) => onChanged(
                    Color(int.parse("0xFF$value")),
                  ),
                ),
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16, bottom: 7),
          child: Text("Common Colors"),
        ),
        Wrap(
          children: List.generate(
            _commonColorList.length,
            (index) => Padding(
              padding: const EdgeInsets.all(2.0),
              child: _ColorOptionBox(
                fillColor: _commonColorList[index],
                isSelected: _commonColorList[index] == value,
                onUpdated: onChanged,
              ),
            ),
          ),
        ),
      ],
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

class ColorPreviewer extends StatelessWidget {
  const ColorPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<Color>(
      values: const [
        Colors.red,
        Colors.blue,
        Colors.green,
        Colors.blue,
      ],
      propertyBuilder: (onChanged, value) {
        return ColorField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

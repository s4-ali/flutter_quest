import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/text_field.dart';

class ColorField extends StatefulWidget {
  final void Function(Color) onChanged;
  final Color value;

  const ColorField({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  State<ColorField> createState() => _ColorFieldState();
}

class _ColorFieldState extends State<ColorField> {
  Color? prefixColor;
  int opacity = 100;
  bool isHover = false;
  Color? colorWithOpacity;
  TextEditingController opacityTextEditingController =
      TextEditingController(text: "100");

  void updateColor(Color color) {
    setState(() {
      prefixColor = color;
      colorWithOpacity = color;
      widget.onChanged(colorWithOpacity!.withOpacity(opacity / 100));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MouseRegion(
          onEnter: (_) {
            setState(() {
              isHover = true;
            });
          },
          onExit: (_) {
            setState(() {
              isHover = false;
            });
          },
          child: AppTextField(
            contentPadding: EdgeInsets.zero,
            prefix: CommonColorContainer(
              fillColor: prefixColor ?? Colors.transparent,
              onTab: widget.onChanged,
              margin: EdgeInsets.zero,//const EdgeInsets.only(top: 8, left: 14, right: 14, bottom: 8),
            ),
            suffixIcon: Container(
              width: 52,
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    width: 1,
                    color: isHover
                        ? const Color(0xff0099FF)
                        : const Color(0xff35363A),
                  ),
                ),
              ),
              child: TextField(
                controller: opacityTextEditingController,
                onChanged: (value) {
                  setState(() {
                    opacity = int.parse(value);
                    widget.onChanged(
                        colorWithOpacity!.withOpacity(opacity / 100));
                  });
                },
                textAlign: TextAlign.right,
                textAlignVertical: TextAlignVertical.center,
                maxLines: 1,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  suffix: Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Text("%"),
                  ),
                ),
              ),
            ),
            onChanged: (v) {
              updateColor(Color(int.parse("0xFF$v")));
            },
            controller: TextEditingController(),
          ),
        ),
        const Text("Common Colors"),
        Row(
          children: [
            CommonColorContainer(
              fillColor: const Color(0xFF1708FF),
              onTab: updateColor,
            ),
            CommonColorContainer(
              fillColor: const Color(0xFF000000),
              onTab: updateColor,
            ),
            CommonColorContainer(
              fillColor: const Color(0xFFFFFFFF),
              onTab: updateColor,
            ),
            CommonColorContainer(
              fillColor: const Color(0xFFFF0000),
              onTab: updateColor,
            ),
            CommonColorContainer(
              fillColor: const Color(0xFFFF7A00),
              onTab: updateColor,
            ),
            CommonColorContainer(
              fillColor: const Color(0xFF008000),
              onTab: updateColor,
            ),
            CommonColorContainer(
              fillColor: const Color(0xFFFFF000),
              onTab: updateColor,
            ),
            CommonColorContainer(
              fillColor: const Color(0xFF00FFB2),
              onTab: updateColor,
            ),
            CommonColorContainer(
              fillColor: const Color(0xFF4b0082),
              onTab: updateColor,
            ),
            CommonColorContainer(
              fillColor: const Color(0xFF8FFF00),
              onTab: updateColor,
            ),
          ],
        ),
        Row(
          children: [
            CommonColorContainer(
              fillColor: const Color(0xFFE22EFF),
              onTab: updateColor,
            ),
            CommonColorContainer(
              fillColor: const Color(0xFF545454),
              onTab: updateColor,
            ),
            CommonColorContainer(
              fillColor: const Color(0xFF7B0000),
              onTab: updateColor,
            ),
            CommonColorContainer(
              fillColor: const Color(0xFF00FF1A),
              onTab: updateColor,
            ),
            CommonColorContainer(
              fillColor: const Color(0xFF00E0FF),
              onTab: updateColor,
            ),
          ],
        ),
      ],
    );
  }
}

class CommonColorContainer extends StatelessWidget {
  final Function(Color) onTab;
  final Color fillColor;
  final EdgeInsets? margin;

  const CommonColorContainer({
    super.key,
    required this.fillColor,
    required this.onTab,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTab(fillColor);
      },
      child: Container(
        height: 20,
        width: 20,
        margin: margin ?? const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: fillColor,
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            border: Border.all(
              color: const Color(0xFFFFFFFF).withOpacity(0.3),
              width: 1,
            )),
      ),
    );
  }
}

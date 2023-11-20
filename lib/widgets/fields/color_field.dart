import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/text_field.dart';

List<Color> _commonColorList = [
  const Color(0xFF1708FF),
  const Color(0xFF000000),
  const Color(0xFFFFFFFF),
  const Color(0xFFFF0000),
  const Color(0xFFFF7A00),
  const Color(0xFF008000),
  const Color(0xFFFFF000),
  const Color(0xFF00FFB2),
  const Color(0xFF4b0082),
  const Color(0xFF8FFF00),
  const Color(0xFFE22EFF),
  const Color(0xFF545454),
  const Color(0xFF7B0000),
  const Color(0xFF00FF1A),
  const Color(0xFF00E0FF),
];

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
  Color? colorWithOpacity;
  TextEditingController opacityTextEditingController =
      TextEditingController(text: "100");
  TextEditingController textEditingController = TextEditingController();

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
        SizedBox(
          height: 30,
          child: AppTextField(
            contentPadding: EdgeInsets.zero,
            prefix: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10,),
              child: CommonColorContainer(
                fillColor: prefixColor ?? Colors.transparent,
                onTab: widget.onChanged,
              ),
            ),
            suffixIcon: Container(
              width: 52,
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                    width: 1,
                    color: Color(0xff35363A),
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
            controller: textEditingController,
          ),
        ),
        const Text("Common Colors"),
        Wrap(
          children: List.generate(
            _commonColorList.length,
            (index) => Padding(
              padding: const EdgeInsets.all(5.0),
              child: CommonColorContainer(
                fillColor: _commonColorList[index],
                onTab: updateColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CommonColorContainer extends StatelessWidget {
  final Function(Color) onTab;
  final Color fillColor;
  const CommonColorContainer({
    super.key,
    required this.fillColor,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (v) {
        onTab(fillColor);
      },
      child: Container(
        height: 20,
        width: 20,
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

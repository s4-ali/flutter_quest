import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/text_field.dart';
import 'package:flex_color_picker/flex_color_picker.dart';

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
  Color selectedColor = Colors.black;
  int opacity = 100;
  TextEditingController opacityTextEditingController =
      TextEditingController(text: "100");
  String textFieldValue = "000000";
  bool flexColorDialog = false;

  void updateColor(Color color) {
    setState(() {
      selectedColor = color;
      widget.onChanged(selectedColor.withOpacity(opacity / 100));
      textFieldValue = color.value.toRadixString(16).substring(2).toUpperCase();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(children: [
          SizedBox(
            height: 30,
            child: AppTextField(
              controller:
                  TextEditingController(text: textFieldValue.toString()),
              contentPadding: const EdgeInsets.only(left: 35, bottom: 10),
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
                child: Padding(
                  padding: const EdgeInsets.only(top: 6.8),
                  child: TextField(
                    controller: opacityTextEditingController,
                    onChanged: (value) {
                      opacity = int.parse(value);
                      updateColor(selectedColor);
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
              ),
              onChanged: (value) => updateColor(Color(int.parse("0xFF$value"))),
            ),
          ),
          Positioned(
            top: 5,
            left: 7,
            child: InkWell(
              onTap: () {
                setState(() {
                  flexColorDialog = !flexColorDialog;
                });
              },
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: selectedColor,
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                  border: Border.all(
                    color: const Color(0xFFFFFFFF).withOpacity(0.3),
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
        ]),
        const Padding(
          padding: EdgeInsets.only(top: 16, bottom: 7),
          child: Text("Common Colors"),
        ),
        Wrap(
          children: List.generate(
            _commonColorList.length,
            (index) => Padding(
              padding: const EdgeInsets.all(5.0),
              child: _CommonColorContainer(
                fillColor: _commonColorList[index],
                onTab: updateColor,
              ),
            ),
          ),
        ),
        flexColorDialog
            ? Center(
                child: ColorPicker(
                  onColorChanged: updateColor,
                  wheelSquarePadding: 15,
                  color: selectedColor,
                  wheelDiameter: 200,
                  maxRecentColors: 5,
                  enableShadesSelection: false,
                  pickersEnabled: const <ColorPickerType, bool>{
                    ColorPickerType.wheel: true,
                    ColorPickerType.primary: false,
                    ColorPickerType.accent: false,
                  },
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}

class _CommonColorContainer extends StatelessWidget {
  final Function(Color) onTab;
  final Color fillColor;

  const _CommonColorContainer({
    required this.fillColor,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTab(fillColor),
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

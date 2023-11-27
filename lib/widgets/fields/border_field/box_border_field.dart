import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';
import 'package:flutter_quest/widgets/drop_down_button.dart';
import 'package:flutter_quest/widgets/radio_button.dart';
import 'package:flutter_quest/widgets/text_field.dart';

enum BoxBorderType {
  only,
  all,
  symmetric,
  side,
}

enum StrokeAlign {
  center,
  inside,
  outside,
}

enum StyleBorder {
  solid,
  none,
}

class BoxBorderField extends PropertyWidget<BoxBorder> {
  const BoxBorderField({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return _BoxBorderField(
      onChanged: onChanged,
      value: value,
    );
  }
}

class _BoxBorderField extends StatefulWidget {
  final void Function(BoxBorder) onChanged;
  final BoxBorder value;

  const _BoxBorderField({
    required this.onChanged,
    required this.value,
  });

  @override
  State<_BoxBorderField> createState() => _BoxBorderFieldState();
}

class _BoxBorderFieldState extends State<_BoxBorderField> {
  BoxBorderType selectedOption = BoxBorderType.all;
  Color color = Colors.black;
  double alignBorder = BorderSide.strokeAlignCenter;
  double borderWidth = 0.0;
  BorderStyle borderStyle = BorderStyle.solid;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      AppDropDownButton(
        selectedOption: selectedOption,
        onChanged: (value) {
          setState(() {
            selectedOption = value!;
          });
        },
        items: [
          DropdownMenuItem<BoxBorderType>(
            onTap: () {
              setState(() {
                widget.onChanged(
                  Border.all(
                    color: color,
                    style: borderStyle,
                    strokeAlign: alignBorder,
                    width: borderWidth,
                  ),
                );
              });
            },
            value: BoxBorderType.all,
            child: const Padding(
              padding: EdgeInsets.only(left: 8, bottom: 3),
              child: Text("All"),
            ),
          ),
          DropdownMenuItem<BoxBorderType>(
            onTap: () => {
              setState(() {
                widget.onChanged(
                  Border.symmetric(
                    horizontal: BorderSide(
                      color: color,
                      style: borderStyle,
                      strokeAlign: alignBorder,
                      width: borderWidth,
                    ),
                    vertical: BorderSide(
                      color: color,
                      style: borderStyle,
                      strokeAlign: alignBorder,
                      width: borderWidth,
                    ),
                  ),
                );
              })
            },
            value: BoxBorderType.symmetric,
            child: const Padding(
              padding: EdgeInsets.only(left: 8, bottom: 3),
              child: Text("Symmetric"),
            ),
          ),
          DropdownMenuItem<BoxBorderType>(
            onTap: () {
              setState(() {
                widget.onChanged(
                  Border.all(
                    color: color,
                    style: borderStyle,
                    strokeAlign: alignBorder,
                    width: borderWidth,
                  ),
                );
              });
            },
            value: BoxBorderType.only,
            child: const Padding(
              padding: EdgeInsets.only(left: 8, bottom: 3),
              child: Text("Only"),
            ),
          ),
          DropdownMenuItem<BoxBorderType>(
            onTap: () => {
              setState(() {
                widget.onChanged(
                  Border.all(
                    color: color,
                    style: borderStyle,
                    strokeAlign: alignBorder,
                    width: borderWidth,
                  ),
                );
              })
            },
            value: BoxBorderType.side,
            child: const Padding(
              padding: EdgeInsets.only(left: 8, bottom: 3),
              child: Text("Side"),
            ),
          ),
        ],
      ),
      _BorderProperties(
        onChanged: (value) {
          borderWidth = value.borderWidth;
          color = value.color;
          alignBorder = value.alignBorder;
          borderStyle = value.borderStyle;

          widget.onChanged(Border.all(
            color: color,
            style: borderStyle,
            strokeAlign: alignBorder,
            width: borderWidth,
          ));
        },
      ),
    ]);
  }
}

class _PassBorderProperties {
  final double borderWidth;
  final Color color;
  final double alignBorder;
  final BorderStyle borderStyle;

  _PassBorderProperties({
    required this.borderWidth,
    required this.color,
    required this.alignBorder,
    required this.borderStyle,
  });
}

class _BorderProperties extends StatefulWidget {
  final void Function(_PassBorderProperties) onChanged;

  const _BorderProperties({
    required this.onChanged,
  });

  @override
  State<_BorderProperties> createState() => _BorderPropertiesState();
}

class _BorderPropertiesState extends State<_BorderProperties> {

  double borderWidth = 0.0;
  Color borderColor = Colors.black;
  StrokeAlign selectedAlign = StrokeAlign.center;
  double alignBorder = BorderSide.strokeAlignCenter;
  StyleBorder selectedStyle = StyleBorder.solid;
  BorderStyle borderStyle = BorderStyle.solid;

  @override
  Widget build(BuildContext context) {

    void passChangedValues() {
      widget.onChanged(
        _PassBorderProperties(
          borderWidth: borderWidth,
          color: borderColor,
          alignBorder: alignBorder,
          borderStyle: borderStyle,
        ),
      );
    }

    return GridView.count(
      crossAxisCount: 2,
      children: [
        _BoxBorderTextField(onChanged: (value) {
          borderWidth = value;
          passChangedValues();
        }),
        _BoxBorderTextField(
          onChanged: (v) {
            int val = v.toInt();
            borderColor = Color(0xFF + val);
            passChangedValues();
          },
          prefix: Container(
            width: 15,
            height: 15,
            color: borderColor,
          ),
        ),
        AppDropDownButton(
          selectedOption: selectedAlign,
          onChanged: (value) {
            setState(() {
              selectedAlign = value;
              passChangedValues();
            });
          },
          items: [
            DropdownMenuItem<StrokeAlign>(
              onTap: () {
                alignBorder = BorderSide.strokeAlignCenter;
                passChangedValues();
              },
              value: StrokeAlign.center,
              child: const Padding(
                padding: EdgeInsets.only(left: 8, bottom: 3),
                child: Text("Center"),
              ),
            ),
            DropdownMenuItem<StrokeAlign>(
              onTap: () {
                alignBorder = BorderSide.strokeAlignInside;
                passChangedValues();
              },
              value: StrokeAlign.inside,
              child: const Padding(
                padding: EdgeInsets.only(left: 8, bottom: 3),
                child: Text("Inside"),
              ),
            ),
            DropdownMenuItem<StrokeAlign>(
              onTap: () {
                alignBorder = BorderSide.strokeAlignOutside;
                passChangedValues();
              },
              value: StrokeAlign.outside,
              child: const Padding(
                padding: EdgeInsets.only(left: 8, bottom: 3),
                child: Text("Outside"),
              ),
            ),
          ],
        ),
        AppDropDownButton(
          selectedOption: selectedStyle,
          onChanged: (value) {
            setState(() {
              selectedStyle = value;
              passChangedValues();
            });
          },
          items: [
            DropdownMenuItem<StyleBorder>(
              onTap: () {
                borderStyle = BorderStyle.solid;
                passChangedValues();
              },
              value: StyleBorder.solid,
              child: const Padding(
                padding: EdgeInsets.only(left: 8, bottom: 3),
                child: Text("Solid"),
              ),
            ),
            DropdownMenuItem<StyleBorder>(
              onTap: () {
                borderStyle = BorderStyle.none;
                passChangedValues();
              },
              value: StyleBorder.none,
              child: const Padding(
                padding: EdgeInsets.only(left: 8, bottom: 3),
                child: Text("None"),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class _BoxBorderTextField extends StatelessWidget {
  final Function(double) onChanged;
  final double? myValue;
  final Widget? prefix;

  const _BoxBorderTextField(
      {required this.onChanged, this.prefix, this.myValue = 0.0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Center(
        child: AppTextField(
          onChanged: (value) {
            onChanged(double.parse(value));
          },
          controller: TextEditingController(text: myValue.toString()),
          prefix: Padding(
            padding: const EdgeInsets.only(right: 4.0, bottom: 13.0),
            child: prefix ?? const Text("W"),
          ),
          contentPadding:
              const EdgeInsets.only(left: 10, right: 4, top: 10, bottom: 9),
        ),
      ),
    );
  }
}

class BoxBorderPreviewer extends StatelessWidget {
  const BoxBorderPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<BoxBorder>(
      values: [
        Border.all(color: Colors.black, width: 2.0),
        const Border(
          top: BorderSide.none,
          right: BorderSide.none,
          bottom: BorderSide.none,
          left: BorderSide.none,
        ),
      ],
      propertyBuilder: (onChanged, value) {
        return BoxBorderField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

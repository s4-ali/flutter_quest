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
  double width = 0.0;
  BorderStyle borderStyle = BorderStyle.solid;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
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
                          width: width,
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
                        Border.all(
                          color: color,
                          style: borderStyle,
                          strokeAlign: alignBorder,
                          width: width,
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
                          width: width,
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
                          width: width,
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
            AppRadioButton(isSelected: true, iconPath: "", onSelected: (){}, onHover: (v){}),

          ],
        ),
        _BorderProperties(onChanged: (value) {
          width = value;
        }, color: (value) {
          value = value;
        }, alignChanged: (value) {
          alignBorder = value;
        }, styleChanged: (value) {
          borderStyle = value;
        }),
      ],
    );
  }
}

class _BorderProperties extends StatefulWidget {
  final void Function(double) onChanged;
  final void Function(Color) color;
  final void Function(double) alignChanged;
  final void Function(BorderStyle) styleChanged;

  const _BorderProperties({
    required this.onChanged,
    required this.color,
    required this.alignChanged,
    required this.styleChanged,
  });

  @override
  State<_BorderProperties> createState() => _BorderPropertiesState();
}

class _BorderPropertiesState extends State<_BorderProperties> {
  Color prefixColor = Colors.black;
  StrokeAlign selectedAlign = StrokeAlign.center;
  StyleBorder selectedStyle = StyleBorder.solid;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 8.0,
      children: [
        _BoxBorderTextField(onChanged: widget.onChanged),
        _BoxBorderTextField(
          onChanged: (v) {
            int val = v.toInt();
            widget.color(Color(0xFF + val));
            prefixColor = Color(0xFF + val);
          },
          prefix: Container(
            width: 15,
            height: 15,
            color: prefixColor,
          ),
        ),
        AppDropDownButton(
          selectedOption: selectedAlign,
          onChanged: (value) {
            setState(() {
              selectedAlign = value;
            });
          },
          items: [
            DropdownMenuItem<StrokeAlign>(
              onTap: () {
                widget.alignChanged(BorderSide.strokeAlignCenter);
              },
              value: StrokeAlign.center,
              child: const Padding(
                padding: EdgeInsets.only(left: 8, bottom: 3),
                child: Text("Center"),
              ),
            ),
            DropdownMenuItem<StrokeAlign>(
              onTap: () {
                widget.alignChanged(BorderSide.strokeAlignInside);
              },
              value: StrokeAlign.inside,
              child: const Padding(
                padding: EdgeInsets.only(left: 8, bottom: 3),
                child: Text("Inside"),
              ),
            ),
            DropdownMenuItem<StrokeAlign>(
              onTap: () {
                widget.alignChanged(BorderSide.strokeAlignOutside);
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
            });
          },
          items: [
            DropdownMenuItem<StyleBorder>(
              onTap: () {
                widget.styleChanged(BorderStyle.solid);
              },
              value: StyleBorder.solid,
              child: const Padding(
                padding: EdgeInsets.only(left: 8, bottom: 3),
                child: Text("Solid"),
              ),
            ),
            DropdownMenuItem<StyleBorder>(
              onTap: () {
                widget.styleChanged(BorderStyle.none);
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

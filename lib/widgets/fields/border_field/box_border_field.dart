import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';
import 'package:flutter_quest/widgets/drop_down_button.dart';
import 'package:flutter_quest/widgets/radio_button.dart';
import 'package:flutter_quest/widgets/text_field.dart';

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

enum BoxBorderType {
  only,
  all,
  symmetric,
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

enum AllBorderType {
  all,
}

enum SymmetricBorderType {
  vertical,
  horizontal,
}

extension on SymmetricBorderType {
  String get iconPath {
    switch (this) {
      case SymmetricBorderType.vertical:
        return "assets/verticalBorder.svg";
      case SymmetricBorderType.horizontal:
        return "assets/horizontalBorder.svg";
    }
  }
}

enum OnlyBorderType {
  top,
  left,
  right,
  bottom,
}

extension on OnlyBorderType {
  String get iconPath {
    switch (this) {
      case OnlyBorderType.top:
        return "assets/topBorder.svg";
      case OnlyBorderType.left:
        return "assets/leftBorder.svg";
      case OnlyBorderType.right:
        return "assets/rightBorder.svg";
      case OnlyBorderType.bottom:
        return "assets/BottomBorder.svg";
    }
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
  BoxBorderType selectedBorder = BoxBorderType.all;
  dynamic selectedSubType = AllBorderType.all;
  Color color = Colors.black;
  double alignBorder = BorderSide.strokeAlignCenter;
  double borderWidth = 0.0;
  BorderStyle borderStyle = BorderStyle.solid;
  Widget selectedLayout = BorderRadioButton(
    onChanged: (v) {},
    value: AllBorderType.all,
    options: AllBorderType.values,
    iconPath: (dynamic value) => "assets/allBorder.svg",
  );

  void updateChanges() {
    BoxBorder? updatedValue;

    switch (selectedSubType) {
      case OnlyBorderType.top:
        updatedValue = Border(
          top: BorderSide(
            width: borderWidth,
            color: color,
            style: borderStyle,
            strokeAlign: alignBorder,
          ),
        );
        break;
      case OnlyBorderType.left:
        updatedValue = Border(
          left: BorderSide(
            width: borderWidth,
            color: color,
            style: borderStyle,
            strokeAlign: alignBorder,
          ),
        );
        break;
      case OnlyBorderType.right:
        updatedValue = Border(
          right: BorderSide(
            width: borderWidth,
            color: color,
            style: borderStyle,
            strokeAlign: alignBorder,
          ),
        );
        break;
      case OnlyBorderType.bottom:
        updatedValue = Border(
          bottom: BorderSide(
            width: borderWidth,
            color: color,
            style: borderStyle,
            strokeAlign: alignBorder,
          ),
        );
        break;
      case SymmetricBorderType.vertical:
        updatedValue = Border.symmetric(
          horizontal: BorderSide(
            width: borderWidth,
            color: color,
            style: borderStyle,
            strokeAlign: alignBorder,
          ),
        );
        break;
      case SymmetricBorderType.horizontal:
        updatedValue = Border.symmetric(
          vertical: BorderSide(
            width: borderWidth,
            color: color,
            style: borderStyle,
            strokeAlign: alignBorder,
          ),
        );
        break;
      case AllBorderType.all:
        updatedValue = Border.all(
          color: color,
          style: borderStyle,
          strokeAlign: alignBorder,
          width: borderWidth,
        );
        break;
    }

    widget.onChanged(updatedValue!);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppDropDownButton(
              selectedOption: selectedBorder,
              onChanged: (value) {
                setState(() {
                  selectedBorder = value!;
                });
              },
              items: [
                DropdownMenuItem<BoxBorderType>(
                  onTap: () {
                    selectedSubType = AllBorderType.all;
                    updateChanges();
                      selectedSubType = AllBorderType.all;
                      selectedLayout = BorderRadioButton(
                        onChanged: (v){
                          selectedSubType = v;
                          updateChanges();
                        },
                        value: selectedSubType,
                        options: AllBorderType.values,
                        iconPath: (dynamic value) => "assets/allBorder.svg",
                      );
                  },
                  value: BoxBorderType.all,
                  child: label("All"),
                ),
                DropdownMenuItem<BoxBorderType>(
                  onTap: () {
                    selectedSubType = SymmetricBorderType.vertical;
                    updateChanges();
                      updateChanges();
                      selectedLayout = BorderRadioButton(
                        onChanged: (v) {
                          setState(() {
                            selectedSubType = v;
                            updateChanges();
                          });
                        },
                        value: selectedSubType,
                        options: SymmetricBorderType.values,
                        iconPath: (dynamic value) =>
                            (value as SymmetricBorderType).iconPath,
                      );
                  },
                  value: BoxBorderType.symmetric,
                  child: label("Symmetric"),
                ),
                DropdownMenuItem<BoxBorderType>(
                  onTap: () {
                    selectedSubType = OnlyBorderType.top;
                    updateChanges();
                      selectedLayout = BorderRadioButton(
                        onChanged: (v) {
                          setState(() {
                            selectedSubType = v;
                            updateChanges();
                          });
                        },
                        value: selectedSubType,
                        options: OnlyBorderType.values,
                        iconPath: (dynamic value) =>
                            (value as OnlyBorderType).iconPath,
                      );
                  },
                  value: BoxBorderType.only,
                  child: label("Only"),
                ),
              ],
            ),
            selectedLayout,
          ],
        ),
      ),
      Wrap(
        spacing: 8,
        runSpacing: 16,
        children: [
          BorderWidth(onChanged: (value) {
            borderWidth = value;
            updateChanges();
          }),
          BorderColor(colorChanged: (value) {
            color = value;
            updateChanges();
          }),
          AlignBorder(alignChanged: (value) {
            alignBorder = value;
            updateChanges();
          }),
          BoxBorderStyle(styleChanged: (value) {
            borderStyle = value;
            updateChanges();
          })
        ],
      ),
    ]);
  }
}

class BorderWidth extends StatefulWidget {
  final Function(double) onChanged;

  BorderWidth({
    super.key,
    required this.onChanged,
  });

  @override
  State<BorderWidth> createState() => _BorderWidthState();
}

class _BorderWidthState extends State<BorderWidth> {
  String myValue = "0.0";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 155,
      child: Center(
        child: AppTextField(
          onChanged: (value) {
            widget.onChanged(double.parse(value));
            myValue = value;
          },
          controller: TextEditingController(text: myValue),
          prefix: const Padding(
            padding: EdgeInsets.only(right: 4.0, bottom: 13.0),
            child: Text("W"),
          ),
          contentPadding: const EdgeInsets.only(left: 10, right: 4, bottom: 9),
        ),
      ),
    );
  }
}

class BorderColor extends StatefulWidget {
  final void Function(Color) colorChanged;

  const BorderColor({super.key, required this.colorChanged});

  @override
  State<BorderColor> createState() => _BorderColorState();
}

class _BorderColorState extends State<BorderColor> {
  Color borderColor = Colors.black;
  String myValue = "000000";

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        height: 30,
        width: 155,
        child: Center(
          child: AppTextField(
            onChanged: (v) {
              setState(() {
                myValue = v;
                borderColor = Color(int.parse("0xFF$v"));
              });
              widget.colorChanged(borderColor);
            },
            controller: TextEditingController(text: myValue),
            contentPadding:
                const EdgeInsets.only(left: 30, right: 4, bottom: 9),
          ),
        ),
      ),
      Positioned(
        top: 5,
        left: 7,
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: borderColor,
            borderRadius: BorderRadius.circular(3),
            border: Border.all(
              width: 1,
              color: const Color(0xFFFFFFFF).withOpacity(0.3),
            ),
          ),
        ),
      ),
    ]);
  }
}

class BoxBorderStyle extends StatelessWidget {
  final void Function(BorderStyle) styleChanged;

  BoxBorderStyle({super.key, required this.styleChanged});

  StyleBorder selectedStyle = StyleBorder.solid;
  BorderStyle borderStyle = BorderStyle.solid;

  @override
  Widget build(BuildContext context) {
    return AppDropDownButton(
      selectedOption: selectedStyle,
      onChanged: (value) {
        selectedStyle = value;
      },
      items: [
        DropdownMenuItem<StyleBorder>(
          onTap: () {
            borderStyle = BorderStyle.solid;
            styleChanged(BorderStyle.solid);
          },
          value: StyleBorder.solid,
          child: label("Solid"),
        ),
        DropdownMenuItem<StyleBorder>(
          onTap: () {
            borderStyle = BorderStyle.none;
            styleChanged(BorderStyle.none);
          },
          value: StyleBorder.none,
          child: label("None"),
        ),
      ],
    );
  }
}

class AlignBorder extends StatelessWidget {
  final void Function(double) alignChanged;

  AlignBorder({super.key, required this.alignChanged});

  StrokeAlign selectedAlign = StrokeAlign.center;
  double alignBorder = BorderSide.strokeAlignCenter;

  @override
  Widget build(BuildContext context) {
    return AppDropDownButton(
      selectedOption: selectedAlign,
      onChanged: (value) {
        selectedAlign = value;
      },
      items: [
        DropdownMenuItem<StrokeAlign>(
          onTap: () {
            alignBorder = BorderSide.strokeAlignCenter;
            alignChanged(BorderSide.strokeAlignCenter);
          },
          value: StrokeAlign.center,
          child: label("Center"),
        ),
        DropdownMenuItem<StrokeAlign>(
          onTap: () {
            alignBorder = BorderSide.strokeAlignInside;
            alignChanged(BorderSide.strokeAlignInside);
          },
          value: StrokeAlign.inside,
          child: label("Inside"),
        ),
        DropdownMenuItem<StrokeAlign>(
          onTap: () {
            alignBorder = BorderSide.strokeAlignOutside;
            alignChanged(BorderSide.strokeAlignOutside);
          },
          value: StrokeAlign.outside,
          child: label("Outside"),
        ),
      ],
    );
  }
}

Widget label(String name) {
  return Padding(
    padding: const EdgeInsets.only(left: 8, bottom: 3),
    child: Text(name),
  );
}

class BorderRadioButton<T> extends StatefulWidget {
  final void Function(T) onChanged;
  final T value;
  final List<T> options;
  final String Function(T) iconPath;

  const BorderRadioButton({
    super.key,
    required this.onChanged,
    required this.value,
    required this.options,
    required this.iconPath,
  });

  @override
  State<BorderRadioButton> createState() => _BorderRadioButtonState<T>();
}

class _BorderRadioButtonState<T> extends State<BorderRadioButton> {
  T? hoveredValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          direction: Axis.horizontal,
          runAlignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.start,
          children: [
            for (final value in widget.options)
              AppRadioButton(
                padding: const EdgeInsets.all(2),
                isSelected: widget.value == value,
                iconPath: widget.iconPath(value as T),
                onSelected: () => widget.onChanged(value),
                onHover: (bool hovering) {
                  setState(() {
                    hoveredValue = hovering ? value : null;
                  });
                },
              ),
          ],
        ),
      ],
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

import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';
import 'package:flutter_quest/widgets/dialog_color_option.dart';
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

abstract class AppBorderType {}

enum AllBorderType implements AppBorderType {
  all,
}

enum SymmetricBorderType implements AppBorderType {
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

enum OnlyBorderType implements AppBorderType {
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
  AppBorderType selectedSubType = AllBorderType.all;
  Color color = Colors.black;
  double alignBorder = BorderSide.strokeAlignCenter;
  double borderWidth = 0.0;
  BorderStyle borderStyle = BorderStyle.solid;
  Widget selectedLayout = _BorderRadioButton(
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
                  value: BoxBorderType.all,
                  onTap: () {
                    selectedSubType = AllBorderType.all;
                    selectedLayout = _BorderRadioButton(
                      key: UniqueKey(),
                      onChanged: (v) {},
                      options: AllBorderType.values,
                      iconPath: (dynamic value) => "assets/allBorder.svg",
                      value: selectedSubType,
                    );
                    updateChanges();
                  },
                  child: label("All"),
                ),
                DropdownMenuItem<BoxBorderType>(
                  value: BoxBorderType.symmetric,
                  onTap: () {
                    selectedSubType = SymmetricBorderType.vertical;
                    selectedLayout = _BorderRadioButton(
                      key: UniqueKey(),
                      onChanged: (v) {
                        setState(() {
                          selectedSubType = v;
                          updateChanges();
                        });
                      },
                      options: SymmetricBorderType.values,
                      iconPath: (dynamic value) =>
                          (value as SymmetricBorderType).iconPath,
                      value: selectedSubType,
                    );
                    updateChanges();
                  },
                  child: label("Symmetric"),
                ),
                DropdownMenuItem<BoxBorderType>(
                  value: BoxBorderType.only,
                  onTap: () {
                    selectedSubType = OnlyBorderType.top;
                    selectedLayout = _BorderRadioButton(
                      key: UniqueKey(),
                      onChanged: (v) {
                        setState(() {
                          selectedSubType = v;
                          updateChanges();
                        });
                      },
                      options: OnlyBorderType.values,
                      iconPath: (dynamic value) =>
                          (value as OnlyBorderType).iconPath,
                      value: selectedSubType,
                    );
                    updateChanges();
                  },
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
          _BorderWidth(onChanged: (value) {
            borderWidth = value;
            updateChanges();
          }),
          _BorderColor(colorChanged: (value) {
            color = value;
            updateChanges();
          }),
          _AlignBorder(alignChanged: (value) {
            alignBorder = value;
            updateChanges();
          }),
          _BoxBorderStyle(styleChanged: (value) {
            borderStyle = value;
            updateChanges();
          })
        ],
      ),
    ]);
  }
}

class _BorderWidth extends StatefulWidget {
  final Function(double) onChanged;

  const _BorderWidth({
    required this.onChanged,
  });

  @override
  State<_BorderWidth> createState() => _BorderWidthState();
}

class _BorderWidthState extends State<_BorderWidth> {
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

class _BorderColor extends StatefulWidget {
  final void Function(Color) colorChanged;

  const _BorderColor({required this.colorChanged});

  @override
  State<_BorderColor> createState() => _BorderColorState();
}

class _BorderColorState extends State<_BorderColor> {
  Color borderColor = Colors.black;
  String myValue = "000000";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 155,
      child: Row(children: [
        AppDialogColor(
          onChanged: (value) {
            borderColor = value;
            widget.colorChanged(borderColor);
            myValue = borderColor.value.toRadixString(16).substring(2);
          },
          value: borderColor,
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          height: 30,
          width: 115,
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
                  const EdgeInsets.only(left: 10, right: 4, bottom: 9),
            ),
          ),
        ),
      ]),
    );
  }
}

class _BoxBorderStyle extends StatelessWidget {
  final void Function(BorderStyle) styleChanged;

  _BoxBorderStyle({required this.styleChanged});

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

class _AlignBorder extends StatelessWidget {
  final void Function(double) alignChanged;

  _AlignBorder({required this.alignChanged});

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

class _BorderRadioButton<T extends AppBorderType> extends StatefulWidget {
  final void Function(T) onChanged;
  final T value;
  final List<T> options;
  final String Function(T) iconPath;

  const _BorderRadioButton({
    super.key,
    required this.onChanged,
    required this.value,
    required this.options,
    required this.iconPath,
  });

  @override
  State<_BorderRadioButton> createState() => _BorderRadioButtonState<T>();
}

class _BorderRadioButtonState<T extends AppBorderType>
    extends State<_BorderRadioButton> {
  AppBorderType? hoveredValue;
  late AppBorderType selected;

  @override
  void initState() {
    selected = widget.value;
    super.initState();
  }

  void onTapOption(T selectedOption) {
    selected = selectedOption;
    widget.onChanged(selected);
    setState(() {});
  }

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
                isSelected: selected == value,
                iconPath: widget.iconPath(value as T),
                onSelected: () => onTapOption(value),
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

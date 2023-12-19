import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';
import 'package:flutter_quest/widgets/range_picker.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Matrix4Field extends PropertyWidget<Matrix4> {
  const Matrix4Field({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return _Matrix4Field(onChanged: onChanged, value: value);
  }
}

class _Matrix4Field extends StatefulWidget {
  final void Function(Matrix4) onChanged;
  final Matrix4 value;

  const _Matrix4Field({
    required this.onChanged,
    required this.value,
  });

  @override
  State<_Matrix4Field> createState() => _Matrix4FieldState();
}

class _Matrix4FieldState extends State<_Matrix4Field> {
  bool openRotation = false;
  bool openOffset = false;
  bool openScale = false;
  bool openSkew = false;
  bool flipHorizontal = false;
  bool flipVertical = false;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _Matrix4Properties(
            name: "Rotate",
            onTap: (value) {
              setState(() {
                openRotation = value;
              });
            }),
        openRotation
            ? _RotateProperty(onChange: widget.onChanged)
            : const SizedBox(),
        _Matrix4Properties(
            name: "Offset",
            onTap: (value) {
              setState(() {
                openOffset = value;
              });
            }),
        openOffset
            ? _OffsetProperty(onChange: widget.onChanged)
            : const SizedBox(),
        _Matrix4Properties(
            name: "Scale",
            onTap: (value) {
              setState(() {
                openScale = value;
              });
            }),
        openScale
            ? _ScaleProperty(onChange: widget.onChanged)
            : const SizedBox(),
        _Matrix4Properties(
            name: "Skew",
            onTap: (value) {
              setState(() {
                openSkew = value;
              });
            }),
        openSkew ? _SkewProperty(onChange: widget.onChanged) : const SizedBox(),
        _Matrix4Properties(
          name: "Flip Horizontal",
          onTap: (value) {
            if (value == true) {
              widget.onChanged(
                Matrix4.diagonal3Values(-1, 1, 1),
              );
            }
            else{
              widget.onChanged(
                Matrix4.diagonal3Values(0, 0, 0),
              );
            }
          },
          iconPath: "assets/flipHorizontal.svg",
        ),
        _Matrix4Properties(
          name: "Flip Vertical",
          onTap: (value) {
            if (value == true) {
              widget.onChanged(
                Matrix4.identity()
                  ..scale(1.0, -1.0),
              );
            }
            else{
              widget.onChanged(
                Matrix4.identity()..scale(0.0, 0.0, 0.0),
              );
            }
          },
          iconPath: "assets/flipVertical.svg",
        ),
      ],
    );
  }
}

class _RotateProperty extends StatelessWidget {
  final void Function(Matrix4) onChange;

  const _RotateProperty({required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Rotation X"),
          AppRangePicker(
            onChanged: (v) {
              onChange(Matrix4.rotationX(v));
            },
          ),
          const Text("Rotation Y"),
          AppRangePicker(
            onChanged: (v) {
              onChange(Matrix4.rotationY(v));
            },
          ),
          const Text("Rotation Z"),
          AppRangePicker(
            onChanged: (v) {
              onChange(Matrix4.rotationZ(v));
            },
          ),
        ],
      ),
    );
  }
}

class _OffsetProperty extends StatelessWidget {
  final void Function(Matrix4) onChange;

  const _OffsetProperty({required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Offset X"),
          AppRangePicker(
            onChanged: (v) {
              onChange(Matrix4.rotationX(v));
            },
          ),
          const Text("Offset Y"),
          AppRangePicker(
            onChanged: (v) {
              onChange(Matrix4.rotationY(v));
            },
          ),
        ],
      ),
    );
  }
}

class _ScaleProperty extends StatelessWidget {
  final void Function(Matrix4) onChange;

  const _ScaleProperty({required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Scale"),
          AppRangePicker(
            onChanged: (v) {
              onChange(
                Matrix4.identity()..scale(v),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _SkewProperty extends StatelessWidget {
  final void Function(Matrix4) onChange;

  const _SkewProperty({required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Skew X"),
          AppRangePicker(
            onChanged: (v) {
              onChange(Matrix4.skewX(v));
            },
          ),
          const Text("Skew Y"),
          AppRangePicker(
            onChanged: (v) {
              onChange(Matrix4.skewY(v));
            },
          ),
        ],
      ),
    );
  }
}

class _Matrix4Properties extends StatefulWidget {
  final String name;
  final void Function(bool) onTap;
  final String? iconPath;

  const _Matrix4Properties(
      {required this.name, required this.onTap, this.iconPath});

  @override
  State<_Matrix4Properties> createState() => _Matrix4PropertiesState();
}

class _Matrix4PropertiesState extends State<_Matrix4Properties> {
  bool hovering = false;
  Color color = const Color(0xFF808080);
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    String path =
        widget.iconPath ?? (selected ? "assets/downArrow.svg" : "assets/rightArrow.svg");
    Color color = hovering || selected
        ? const Color(0xFFFFFFFF)
        : const Color(0xFF808080);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onHover: (value) {
          setState(() {
            hovering = value;
          });
        },
        onTap: () {
          setState(() {
            selected = !selected;
          });
          widget.onTap(selected);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.name,
              style: TextStyle(color: color),
            ),
            SvgPicture.asset(path, color: color),
          ],
        ),
      ),
    );
  }
}

class Matrix4Previewer extends StatelessWidget {
  const Matrix4Previewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<Matrix4>(
      values: [
        Matrix4.zero(),
        Matrix4.skewY(20),
        Matrix4.skewX(54),
        Matrix4.rotationX(80),
        Matrix4.rotationY(63)
      ],
      propertyBuilder: (onChanged, value) {
        return Matrix4Field(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

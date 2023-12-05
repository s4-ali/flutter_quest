import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Matrix4Field extends PropertyWidget<Matrix4> {
  const Matrix4Field({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _Matrix4Properties(name: "Rotate", onTap: (v) {}),
        _Matrix4Properties(name: "Offset", onTap: (v) {}),
        _Matrix4Properties(name: "Scale", onTap: (v) {}),
        _Matrix4Properties(name: "Skew", onTap: (v) {}),
        _Matrix4Properties(
          name: "Flip Horizontal",
          onTap: (v) {},
          iconPath: "flipHorizontal.svg",
        ),
        _Matrix4Properties(
          name: "Flip Vertical",
          onTap: (v) {},
          iconPath: "flipVertical.svg",
        ),
      ],
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
        widget.iconPath ?? (selected ? "downArrow.svg" : "rightArrow.svg");
    Color color =
        hovering || selected ? const Color(0xFFFFFFFF) : const Color(0xFF808080);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onHover: (value) {
          setState(() {
            hovering = value;
          });
        },
        onTap: () {
          widget.onTap(selected);
          setState(() {
            selected = !selected;
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.name,
              style: TextStyle(
                color: color
              ),
            ),
            SvgPicture.asset(path,
                color: color),
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
      values: [Matrix4.zero()],
      titleBuilder: (val) => "Matrix4.zero()",
      propertyBuilder: (onChanged, value) {
        return Matrix4Field(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

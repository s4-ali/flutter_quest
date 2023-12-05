import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

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
        MatrixProperties(name: "Rotate", onTap: () {}),
        MatrixProperties(name: "Offset", onTap: () {}),
      ],
    );
  }
}

class MatrixProperties extends StatefulWidget {
  final String name;
  final void Function() onTap;

  const MatrixProperties(
      {super.key, required this.name, required this.onTap});

  @override
  State<MatrixProperties> createState() => _MatrixPropertiesState();
}

class _MatrixPropertiesState extends State<MatrixProperties> {
  bool hovering = false;
  Color color = const Color(0xFF808080);
  bool opened = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onHover: (value) {
          setState(() {
            hovering = value;
          });
        },
        onTap: () {
          widget.onTap();
          setState(() {
            opened = !opened;
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.name,
              style: TextStyle(
                color: hovering
                    ? const Color(0xFFFFFFFF)
                    : const Color(0xFF808080),
              ),
            ),
            Icon(
              opened? Icons.keyboard_arrow_down : Icons.keyboard_arrow_right,
              size: 16,
              color:
                  hovering ? const Color(0xFFFFFFFF) : const Color(0xFF808080),
            ),
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

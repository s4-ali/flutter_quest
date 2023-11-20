import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/fields/border_radius/border_radius_field.dart';

enum BorderRadiusAllType {
  circular,
  elliptical,
}

class BorderRadiusAllLayout extends StatefulWidget {
  const BorderRadiusAllLayout({super.key});

  @override
  State<BorderRadiusAllLayout> createState() => _BorderRadiusAllLayoutState();
}

class _BorderRadiusAllLayoutState extends State<BorderRadiusAllLayout> {
  BorderRadiusType selectedOption = BorderRadiusType.all;
  late Widget selectedLayout;
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (v) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (v) {
        setState(() {
          isHovered = false;
        });
      },
      child: Container(
        height: 30,
        width: 134,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: const BorderRadius.all(Radius.circular(6.0)),
          //   border: buttonBorder,
        ),
        child: DropdownButton<BorderRadiusType>(
          icon: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(Icons.keyboard_arrow_down),
          ),
          iconSize: 12,
          iconEnabledColor: const Color(0xFFFFFFFF),
          focusColor: Colors.transparent,
          underline: const SizedBox(),
          alignment: Alignment.centerLeft,
          value: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption = value!;
            });
          },
          items: [
            DropdownMenuItem<BorderRadiusType>(
              onTap: () {
                selectedLayout = const SizedBox();
              },
              value: BorderRadiusType.all,
              child: const Padding(
                padding: EdgeInsets.only(left: 8, bottom: 3),
                child: Text("All"),
              ),
            ),
            DropdownMenuItem<BorderRadiusType>(
              onTap: () {
                selectedLayout = const SizedBox();
              },
              value: BorderRadiusType.circular,
              child: const Padding(
                padding: EdgeInsets.only(left: 8, bottom: 5),
                child: Text("Symmetric"),
              ),
            ),
            DropdownMenuItem<BorderRadiusType>(
              onTap: () {
                selectedLayout = const SizedBox();
              },
              value: BorderRadiusType.vertical,
              child: const Padding(
                padding: EdgeInsets.only(left: 8, bottom: 5),
                child: Text("Only"),
              ),
            ),
            DropdownMenuItem<BorderRadiusType>(
              onTap: () {
                selectedLayout = const SizedBox();
              },
              value: BorderRadiusType.horizontal,
              child: const Padding(
                padding: EdgeInsets.only(left: 8, bottom: 5),
                child: Text("Only"),
              ),
            ),
            DropdownMenuItem<BorderRadiusType>(
              onTap: () {
                selectedLayout = const SizedBox();
              },
              value: BorderRadiusType.only,
              child: const Padding(
                padding: EdgeInsets.only(left: 8, bottom: 5),
                child: Text("Only"),
              ),
            ),
            DropdownMenuItem<BorderRadiusType>(
              onTap: () {
                selectedLayout = const SizedBox();
              },
              value: BorderRadiusType.zero,
              child: const Padding(
                padding: EdgeInsets.only(left: 8, bottom: 5),
                child: Text("Only"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

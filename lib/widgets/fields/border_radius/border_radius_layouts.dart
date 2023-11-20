import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/text_field.dart';

enum BorderRadiusAllType {
  circular,
  elliptical,
}

class BorderRadiusAllLayout extends StatefulWidget {
  final void Function(BorderRadius) onChanged;

  const BorderRadiusAllLayout({super.key, required this.onChanged});

  @override
  State<BorderRadiusAllLayout> createState() => _BorderRadiusAllLayoutState();
}

class _BorderRadiusAllLayoutState extends State<BorderRadiusAllLayout> {
  BorderRadiusAllType selectedOption = BorderRadiusAllType.circular;
  late Widget selectedLayout;
  bool isHovered = false;

  double x = 0.0;
  double y = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MouseRegion(
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
            child: DropdownButton<BorderRadiusAllType>(
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
                DropdownMenuItem<BorderRadiusAllType>(
                  onTap: () {
                    selectedLayout = BorderRadiusTextField(
                      onChanged: (v) {
                        widget.onChanged(
                          BorderRadius.all(
                            Radius.circular(v),
                          ),
                        );
                      },
                    );
                  },
                  value: BorderRadiusAllType.circular,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 3),
                    child: Text("Circular"),
                  ),
                ),
                DropdownMenuItem<BorderRadiusAllType>(
                  onTap: () {
                    selectedLayout = Row(children: [
                      BorderRadiusTextField(
                        onChanged: (v) {
                          setState(() {
                            x = v;
                          });
                          widget.onChanged(
                            BorderRadius.all(
                              Radius.elliptical(x, y),
                            ),
                          );
                        },
                      ),
                      BorderRadiusTextField(
                        onChanged: (v) {
                          setState(() {
                            y = v;
                          });
                          widget.onChanged(
                            BorderRadius.all(
                              Radius.elliptical(x, y),
                            ),
                          );
                        },
                      )
                    ]);
                    ;
                  },
                  value: BorderRadiusAllType.elliptical,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 5),
                    child: Text("Elliptical"),
                  ),
                ),
              ],
            ),
          ),
        ),
        BorderRadiusTextField(
          onChanged: (v) {
            widget.onChanged(
              BorderRadius.all(
                Radius.circular(v),
              ),
            );
          },
        ),
      ],
    );
  }
}

class BorderRadiusTextField extends StatelessWidget {
  final Function(double) onChanged;
  final String? prefixText;
  final double? myValue;
  final double? width;

  const BorderRadiusTextField(
      {super.key,
        required this.onChanged,
        this.prefixText,
        this.width = double.infinity,
        this.myValue = 0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 30,
        width: width,
        child: Center(
          child: AppTextField(
            onChanged: (value) {
              onChanged(double.parse(value));
            },
            controller: TextEditingController(text: myValue.toString()),
            prefix: Padding(
              padding: const EdgeInsets.only(right: 4.0, bottom: 13.0),
              child: Text(prefixText ?? ""),
            ),
            textAlign: TextAlign.center,
            contentPadding:
            const EdgeInsets.only(left: 10, right: 4, top: 10, bottom: 9),
          ),
        ),
      ),
    );
  }
}

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
  late Widget selectedAllLayout;
  bool isHovered = false;

  double x = 0.0;
  double y = 0.0;

  @override
  Widget build(BuildContext context) {
    Border buttonBorder = Border.all(
      width: 1.0,
      color: isHovered ? const Color(0xFF0099FF) : const Color(0xFF35363A),
    );

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
              border: buttonBorder,
            ),
            child: DropdownButton<BorderRadiusAllType>(
              icon: const Padding(
                padding: EdgeInsets.only(left: 40,),
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
                    selectedAllLayout = _BorderRadiusTextField(
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
                    selectedAllLayout = Row(
                        children: [
                      _BorderRadiusTextField(
                        prefixText: "X",
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
                      _BorderRadiusTextField(
                        prefixText: "Y",
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
        selectedAllLayout!,
      ],
    );
  }
}

class BorderRadiusCircularLayout extends StatelessWidget {
  final void Function(BorderRadius) onChanged;

  const BorderRadiusCircularLayout({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return _BorderRadiusTextField(
        onChanged: (v) => onChanged(BorderRadius.circular(v)));
  }
}



class _BorderRadiusTextField extends StatelessWidget {
  final Function(double) onChanged;
  final String? prefixText;
  final double? myValue;

  const _BorderRadiusTextField(
      {super.key, required this.onChanged, this.prefixText, this.myValue = 0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 30,
        width: double.infinity,
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

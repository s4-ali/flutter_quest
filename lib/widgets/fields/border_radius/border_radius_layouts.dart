import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/text_field.dart';

enum BorderRadiusAllType {
  circular,
  elliptical,
}

enum BorderRadiusVerticalType {
  top,
  bottom,
}
enum BorderRadiusHorizontalType {
  left,
  right,
}

class BorderRadiusAllLayout extends StatefulWidget {
  final void Function(BorderRadius) onChanged;
  final BorderRadius value;

  const BorderRadiusAllLayout(
      {super.key, required this.onChanged, required this.value});

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
  void initState() {
    super.initState();
    selectedAllLayout = _BorderRadiusTextField(
      onChanged: (v) {
        widget.onChanged(
          BorderRadius.all(
            Radius.circular(v),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Border buttonBorder = Border.all(
      width: 1.0,
      color: isHovered ? const Color(0xFF0099FF) : const Color(0xFF35363A),
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
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
            width: 150,
            padding: const EdgeInsets.only(left: 5),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: const BorderRadius.all(Radius.circular(6.0)),
              border: buttonBorder,
            ),
            child: DropdownButton<BorderRadiusAllType>(
              icon: const Padding(
                padding: EdgeInsets.only(
                  left: 50,
                ),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      SizedBox(
                        width: 150,
                        child: _BorderRadiusTextField(
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
                      ),
                      SizedBox(width: 150,
                        child: _BorderRadiusTextField(
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
                        ),
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
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: selectedAllLayout,
        ),
      ],
    );
  }
}

class BorderRadiusCircularLayout extends StatelessWidget {
  final void Function(BorderRadius) onChanged;
  final BorderRadius value;

  const BorderRadiusCircularLayout(
      {super.key, required this.onChanged, required this.value});

  @override
  Widget build(BuildContext context) {
    return _BorderRadiusTextField(
        onChanged: (v) => onChanged(BorderRadius.circular(v)));
  }
}

class BorderRadiusVerticalLayout extends StatefulWidget {
  final void Function(BorderRadius) onChanged;
  final BorderRadius value;

  const BorderRadiusVerticalLayout(
      {super.key, required this.onChanged, required this.value});

  @override
  State<BorderRadiusVerticalLayout> createState() => _BorderRadiusVerticalLayoutState();
}

class _BorderRadiusVerticalLayoutState extends State<BorderRadiusVerticalLayout> {
  BorderRadiusVerticalType selectedOption = BorderRadiusVerticalType.top;
  late Widget selectedVerticalLayout;
  bool isHovered = false;

  @override
  void initState() {
    super.initState();
    selectedVerticalLayout = _BorderRadiusTextField(
      onChanged: (v) {
        widget.onChanged(
          BorderRadius.vertical(
            top: Radius.circular(v),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Border buttonBorder = Border.all(
      width: 1.0,
      color: isHovered ? const Color(0xFF0099FF) : const Color(0xFF35363A),
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
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
            width: 150,
            padding: const EdgeInsets.only(left: 5),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: const BorderRadius.all(Radius.circular(6.0)),
              border: buttonBorder,
            ),
            child: DropdownButton<BorderRadiusVerticalType>(
              icon: const Padding(
                padding: EdgeInsets.only(
                  left: 50,
                ),
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
                DropdownMenuItem<BorderRadiusVerticalType>(
                  onTap: () {
                    selectedVerticalLayout = _BorderRadiusTextField(
                      onChanged: (v) {
                        widget.onChanged(
                          BorderRadius.vertical(
                            top: Radius.circular(v),
                          ),
                        );
                      },
                    );
                  },
                  value: BorderRadiusVerticalType.top,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 3),
                    child: Text("Top"),
                  ),
                ),
                DropdownMenuItem<BorderRadiusVerticalType>(
                  onTap: () {
                    selectedVerticalLayout = _BorderRadiusTextField(
                      onChanged: (v) {
                        widget.onChanged(
                          BorderRadius.vertical(
                            bottom: Radius.circular(v),
                          ),
                        );
                      },
                    );
                  },
                  value: BorderRadiusVerticalType.bottom,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 3),
                    child: Text("Bottom"),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: selectedVerticalLayout
        ),
      ],
    );
  }
}

class BorderRadiusHorizontalLayout extends StatefulWidget {
  final void Function(BorderRadius) onChanged;
  final BorderRadius value;

  const BorderRadiusHorizontalLayout(
      {super.key, required this.onChanged, required this.value});

  @override
  State<BorderRadiusHorizontalLayout> createState() => _BorderRadiusHorizontalLayoutState();
}

class _BorderRadiusHorizontalLayoutState extends State<BorderRadiusHorizontalLayout> {
  BorderRadiusHorizontalType selectedOption = BorderRadiusHorizontalType.left;
  late Widget selectedVerticalLayout;
  bool isHovered = false;

  @override
  void initState() {
    super.initState();
    selectedVerticalLayout = _BorderRadiusTextField(
      onChanged: (v) {
        widget.onChanged(
          BorderRadius.horizontal(
            left: Radius.circular(v),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Border buttonBorder = Border.all(
      width: 1.0,
      color: isHovered ? const Color(0xFF0099FF) : const Color(0xFF35363A),
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
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
            width: 150,
            padding: const EdgeInsets.only(left: 5),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: const BorderRadius.all(Radius.circular(6.0)),
              border: buttonBorder,
            ),
            child: DropdownButton<BorderRadiusHorizontalType>(
              icon: const Padding(
                padding: EdgeInsets.only(
                  left: 50,
                ),
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
                DropdownMenuItem<BorderRadiusHorizontalType>(
                  onTap: () {
                    selectedVerticalLayout = _BorderRadiusTextField(
                      onChanged: (v) {
                        widget.onChanged(
                          BorderRadius.horizontal(
                            left: Radius.circular(v),
                          ),
                        );
                      },
                    );
                  },
                  value: BorderRadiusHorizontalType.left,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 3),
                    child: Text("Left"),
                  ),
                ),
                DropdownMenuItem<BorderRadiusHorizontalType>(
                  onTap: () {
                    selectedVerticalLayout = _BorderRadiusTextField(
                      onChanged: (v) {
                        widget.onChanged(
                          BorderRadius.horizontal(
                            right: Radius.circular(v),
                          ),
                        );
                      },
                    );
                  },
                  value: BorderRadiusHorizontalType.right,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 3),
                    child: Text("Right"),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: selectedVerticalLayout
        ),
      ],
    );
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
    return SizedBox(
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
    );
  }
}

class DropDownContainer extends StatefulWidget {
  final Widget child;
  final double width;
  const DropDownContainer({super.key, required this.width, required this.child});

  @override
  State<DropDownContainer> createState() => _DropDownContainerState();
}

class _DropDownContainerState extends State<DropDownContainer> {

  bool isHovered = false;

  @override
  Widget build(BuildContext context) {

    Border buttonBorder = Border.all(
      width: 1.0,
      color: isHovered ? const Color(0xFF0099FF) : const Color(0xFF35363A),
    );

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
    width: 150,
    padding: const EdgeInsets.only(left: 5),
    decoration: BoxDecoration(
    color: Colors.transparent,
    borderRadius: const BorderRadius.all(Radius.circular(6.0)),
    border: buttonBorder,
    ),
    child: widget.child,
    ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/drop_down_button.dart';
import 'package:flutter_quest/widgets/text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

enum BorderRadiusOnlyType {
  topLeft,
  topRight,
  bottomLeft,
  bottomRight,
}

Widget name(String name, String image) {
  return Padding(
    padding: const EdgeInsets.only(left: 5, bottom: 5),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 4, right: 7.0),
          child: SvgPicture.asset("assets/$image"),
        ),
        Text(name),
      ],
    ),
  );
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
  late Widget selectedLayout;

  double x = 0.0;
  double y = 0.0;

  @override
  void initState() {
    super.initState();
    selectedLayout = _BorderRadiusTextField(
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        AppDropDownButton(
          selectedOption: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption = value;
            });
          },
          items: [
            DropdownMenuItem<BorderRadiusAllType>(
                onTap: () {
                  selectedLayout = _BorderRadiusTextField(
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
                child: name("Circular", "allCircular.svg")),
            DropdownMenuItem<BorderRadiusAllType>(
              onTap: () {
                selectedLayout = Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 155,
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
                      SizedBox(
                        width: 155,
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
              },
              value: BorderRadiusAllType.elliptical,
              child: name("Elliptical", "allElliptical.svg"),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: selectedLayout,
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
  State<BorderRadiusVerticalLayout> createState() =>
      _BorderRadiusVerticalLayoutState();
}

class _BorderRadiusVerticalLayoutState
    extends State<BorderRadiusVerticalLayout> {
  BorderRadiusVerticalType selectedOption = BorderRadiusVerticalType.top;
  late Widget selectedLayout;

  @override
  void initState() {
    super.initState();
    selectedLayout = _BorderRadiusTextField(
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        AppDropDownButton(
          selectedOption: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption = value;
            });
          },
          items: [
            DropdownMenuItem<BorderRadiusVerticalType>(
              onTap: () {
                selectedLayout = _BorderRadiusTextField(
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
              child: name("Top", "verticalTop.svg"),
            ),
            DropdownMenuItem<BorderRadiusVerticalType>(
              onTap: () {
                selectedLayout = _BorderRadiusTextField(
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
              child: name("Bottom", "verticalBottom.svg"),
            ),
          ],
        ),
        Padding(
            padding: const EdgeInsets.only(top: 16.0), child: selectedLayout),
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
  State<BorderRadiusHorizontalLayout> createState() =>
      _BorderRadiusHorizontalLayoutState();
}

class _BorderRadiusHorizontalLayoutState
    extends State<BorderRadiusHorizontalLayout> {
  BorderRadiusHorizontalType selectedOption = BorderRadiusHorizontalType.left;
  late Widget selectedLayout;

  @override
  void initState() {
    super.initState();
    selectedLayout = _BorderRadiusTextField(
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        AppDropDownButton(
            selectedOption: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value;
              });
            },
            items: [
              DropdownMenuItem<BorderRadiusHorizontalType>(
                onTap: () {
                  selectedLayout = _BorderRadiusTextField(
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
                child: name("Left", "horizontalLeft.svg"),
              ),
              DropdownMenuItem<BorderRadiusHorizontalType>(
                onTap: () {
                  selectedLayout = _BorderRadiusTextField(
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
                child: name("Right", "horizontalRight.svg"),
              ),
            ]),
        Padding(
            padding: const EdgeInsets.only(top: 16.0), child: selectedLayout),
      ],
    );
  }
}

class BorderRadiusOnlyLayout extends StatefulWidget {
  final void Function(BorderRadius) onChanged;
  final BorderRadius value;

  const BorderRadiusOnlyLayout(
      {super.key, required this.onChanged, required this.value});

  @override
  State<BorderRadiusOnlyLayout> createState() =>
      _BorderRadiusOnlyLayoutState();
}

class _BorderRadiusOnlyLayoutState
    extends State<BorderRadiusOnlyLayout> {
  BorderRadiusOnlyType selectedOption = BorderRadiusOnlyType.topLeft;
  late Widget selectedLayout;

  @override
  void initState() {
    super.initState();
    selectedLayout = _BorderRadiusTextField(
      onChanged: (v) {
        widget.onChanged(
          BorderRadius.only(
            topLeft: Radius.circular(v),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        AppDropDownButton(
            selectedOption: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value;
              });
            },
            items: [
              DropdownMenuItem<BorderRadiusOnlyType>(
                onTap: () {
                  selectedLayout = _BorderRadiusTextField(
                    onChanged: (v) {
                      widget.onChanged(
                        BorderRadius.only(
                          topLeft: Radius.circular(v),
                        ),
                      );
                    },
                  );
                },
                value: BorderRadiusOnlyType.topLeft,
                child: name("Top Left", "topLeft.svg"),
              ),
              DropdownMenuItem<BorderRadiusOnlyType>(
                onTap: () {
                  selectedLayout = _BorderRadiusTextField(
                    onChanged: (v) {
                      widget.onChanged(
                        BorderRadius.only(
                          topRight: Radius.circular(v),
                        ),
                      );
                    },
                  );
                },
                value: BorderRadiusOnlyType.topRight,
                child: name("Top Right", "topRight.svg")
              ),
              DropdownMenuItem<BorderRadiusOnlyType>(
                  onTap: () {
                    selectedLayout = _BorderRadiusTextField(
                      onChanged: (v) {
                        widget.onChanged(
                          BorderRadius.only(
                            bottomLeft: Radius.circular(v),
                          ),
                        );
                      },
                    );
                  },
                  value: BorderRadiusOnlyType.bottomLeft,
                  child: name("Bottom Left", "bottomLeft.svg"),
              ),
              DropdownMenuItem<BorderRadiusOnlyType>(
                  onTap: () {
                    selectedLayout = _BorderRadiusTextField(
                      onChanged: (v) {
                        widget.onChanged(
                          BorderRadius.only(
                            bottomRight: Radius.circular(v),
                          ),
                        );
                      },
                    );
                  },
                  value: BorderRadiusOnlyType.bottomRight,
                  child: name("Bottom Right", "bottomRight.svg"),
              ),
            ]),
        Padding(
            padding: const EdgeInsets.only(top: 16.0), child: selectedLayout),
      ],
    );
  }
}

class _BorderRadiusTextField extends StatelessWidget {
  final Function(double) onChanged;
  final String? prefixText;
  final double? myValue;

  const _BorderRadiusTextField(
      {super.key, required this.onChanged, this.prefixText, this.myValue=0.0});

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
            child: Text(prefixText ?? ""),
          ),
          contentPadding:
              const EdgeInsets.only(left: 10, right: 4, top: 10, bottom: 9),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllEdgeInsetsLayout extends StatefulWidget {
  final Function(EdgeInsets) onChanged;
  final EdgeInsets value;

  const AllEdgeInsetsLayout(
      {super.key, required this.onChanged, required this.value});

  @override
  State<AllEdgeInsetsLayout> createState() => _AllEdgeInsetsLayoutState();
}

class _AllEdgeInsetsLayoutState extends State<AllEdgeInsetsLayout> {
  double all = 0.0;
  Color linesColor = const Color(0xFF808080);

  void updateValues({
    double? allValue,
  }) {
    setState(() {
      all = allValue ?? all;
      linesColor = const Color(0xFF0099FF);

      widget.onChanged(
        EdgeInsets.all(all),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        EdgeInsetsTextField(
            prefixText: "T",
            onChanged: (value) {
              updateValues(allValue: value);
            }),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EdgeInsetsTextField(
                prefixText: "L",
                onChanged: (value) {
                  updateValues(allValue: value);
                }),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LineContainer(
                  vertical: true,
                  color: linesColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LineContainer(
                      vertical: false,
                      color: linesColor,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Color(0xFF0099FF),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: SvgPicture.asset("assets/all.svg"),
                    ),
                    LineContainer(
                      vertical: false,
                      color: linesColor,
                    ),
                  ],
                ),
                LineContainer(
                  vertical: true,
                  color: linesColor,
                ),
              ],
            ),
            EdgeInsetsTextField(
                prefixText: "R",
                onChanged: (value) {
                  updateValues(allValue: value);
                }),
          ],
        ),
        EdgeInsetsTextField(
            prefixText: "B",
            onChanged: (value) {
              updateValues(allValue: value);
            }),
      ],
    );
  }
}

class OnlyEdgeInsetsLayout extends StatefulWidget {
  final Function(EdgeInsets) onChanged;
  final EdgeInsets value;

  const OnlyEdgeInsetsLayout(
      {super.key, required this.onChanged, required this.value});

  @override
  State<OnlyEdgeInsetsLayout> createState() => _OnlyEdgeInsetsLayoutState();
}

class _OnlyEdgeInsetsLayoutState extends State<OnlyEdgeInsetsLayout> {
  double top = 0.0;
  double bottom = 0.0;
  double left = 0.0;
  double right = 0.0;


  Color topLinesColor = const Color(0xFF808080);
  Color bottomLinesColor = const Color(0xFF808080);
  Color leftLinesColor = const Color(0xFF808080);
  Color rightLinesColor = const Color(0xFF808080);

  void updateValues({
    double? topValue,
    double? bottomValue,
    double? leftValue,
    double? rightValue,
  }) {
    setState(() {
      top = topValue ?? top;
      bottom = bottomValue ?? bottom;
      left = leftValue ?? left;
      right = rightValue ?? right;

      topLinesColor = top != 0? const Color(0xFF0099FF)
          : const Color(0xFF808080);
      bottomLinesColor = bottom != 0? const Color(0xFF0099FF)
          : const Color(0xFF808080);
      leftLinesColor = left != 0? const Color(0xFF0099FF)
          : const Color(0xFF808080);
      rightLinesColor = right != 0? const Color(0xFF0099FF)
          : const Color(0xFF808080);



      widget.onChanged(
        EdgeInsets.only(top: top, left: left, right: right, bottom: bottom),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        EdgeInsetsTextField(
            prefixText: "T",
            onChanged: (value) {
              updateValues(topValue: value);
            }),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EdgeInsetsTextField(
                prefixText: "L",
                onChanged: (value) {
                  updateValues(leftValue: value);
                }),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LineContainer(
                  vertical: true,
                  color: topLinesColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LineContainer(
                      vertical: false,
                      color: leftLinesColor,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Color(0xFF0099FF),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: SvgPicture.asset("assets/only.svg"),
                    ),
                    LineContainer(
                      vertical: false,
                      color: rightLinesColor,
                    ),
                  ],
                ),
                LineContainer(
                  vertical: true,
                  color: bottomLinesColor,
                ),
              ],
            ),
            EdgeInsetsTextField(
                prefixText: "R",
                onChanged: (value) {
                  updateValues(rightValue: value);
                }),
          ],
        ),
        EdgeInsetsTextField(
            prefixText: "B",
            onChanged: (value) {
              updateValues(bottomValue: value);
            }),
      ],
    );
  }
}

class SymmetricEdgeInsetsLayout extends StatefulWidget {
  final Function(EdgeInsets) onChanged;
  final EdgeInsets value;

  const SymmetricEdgeInsetsLayout(
      {super.key, required this.onChanged, required this.value});

  @override
  State<SymmetricEdgeInsetsLayout> createState() =>
      _SymmetricEdgeInsetsLayoutState();
}

class _SymmetricEdgeInsetsLayoutState extends State<SymmetricEdgeInsetsLayout> {
  double vertical = 0.0;
  double horizontal = 0.0;

  Color verticalLinesColor = const Color(0xFF808080);
 Color horizontalLinesColor = const Color(0xFF808080);

  void updateValues({
    double? verticalValue,
    double? horizontalValue,
  }) {
    setState(() {
      vertical = verticalValue ?? vertical;
      horizontal = horizontalValue ?? horizontal;
      vertical != 0
          ? verticalLinesColor = const Color(0xFF0099FF)
          : const Color(0xFF808080);
      horizontal != 0
          ? horizontalLinesColor = const Color(0xFF0099FF)
          : const Color(0xFF808080);

      widget.onChanged(
        EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        EdgeInsetsTextField(
            prefixText: "T",
            onChanged: (value) {
              updateValues(verticalValue: value);
            }),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EdgeInsetsTextField(
                prefixText: "L",
                onChanged: (value) {
                  updateValues(horizontalValue: value);
                }),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LineContainer(
                  vertical: true,
                  color: verticalLinesColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LineContainer(
                      vertical: false,
                      color: horizontalLinesColor,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Color(0xFF0099FF),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: SvgPicture.asset("assets/symmetric.svg"),
                    ),
                    LineContainer(
                      vertical: false,
                      color: horizontalLinesColor,
                    ),
                  ],
                ),
                LineContainer(
                  vertical: true,
                  color: verticalLinesColor,
                ),
              ],
            ),
            EdgeInsetsTextField(
                prefixText: "R",
                onChanged: (value) {
                  updateValues(horizontalValue: value);
                }),
          ],
        ),
        EdgeInsetsTextField(
            prefixText: "B",
            onChanged: (value) {
              updateValues(verticalValue: value);
            }),
      ],
    );
  }
}

class EdgeInsetsTextField extends StatelessWidget {
  final Function(double) onChanged;
  final String prefixText;
  final double? value;

  const EdgeInsetsTextField(
      {super.key,
      required this.onChanged,
      required this.prefixText,
      this.value = 0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 30,
        width: 60,
        child: Center(
          child: AppTextField(
            onChanged: (value) {
              onChanged(double.parse(value));
            },
            controller: TextEditingController(text: value.toString()),
            prefix: Text(prefixText),
            textAlign: TextAlign.center,
            contentPadding:
                const EdgeInsets.only(left: 10, right: 4, top: 10, bottom: 9),
          ),
        ),
      ),
    );
  }
}

class LineContainer extends StatelessWidget {
  final bool vertical;
  final Color color;

  const LineContainer({super.key, required this.vertical, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: vertical ? 14 : 2,
      width: vertical ? 2 : 14,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(50)),
      ),
    );
  }
}

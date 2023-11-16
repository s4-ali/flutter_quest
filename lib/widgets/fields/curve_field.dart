import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/radio_button.dart';

const values = [
  Curves.bounceIn,
  Curves.bounceInOut,
  Curves.bounceOut,
  Curves.decelerate,
  Curves.ease,
  Curves.easeIn,
  Curves.easeInBack,
  Curves.easeInCirc,
  Curves.easeInCubic,
  Curves.easeInExpo,
  Curves.easeInOut,
  Curves.easeInOutBack,
  Curves.easeInOutCirc,
  Curves.easeInOutCubic,
  Curves.easeInOutCubicEmphasized,
  Curves.easeInOutExpo,
  Curves.easeInOutQuad,
  Curves.easeInOutQuart,
  Curves.easeInOutQuint,
  Curves.easeInOutSine,
  Curves.easeInQuad,
  Curves.easeInQuint,
  Curves.easeInSine,
  Curves.easeInToLinear,
  Curves.easeOut,
  Curves.easeOutBack,
  Curves.easeOutCirc,
  Curves.easeOutCubic,
  Curves.easeOutExpo,
  Curves.easeOutQuad,
  Curves.easeOutQuint,
  Curves.easeOutSine,
  Curves.elasticIn,
  Curves.elasticInOut,
  Curves.elasticOut,
  Curves.fastEaseInToSlowEaseOut,
  Curves.fastLinearToSlowEaseIn,
  Curves.fastOutSlowIn,
  Curves.linear,
  Curves.linearToEaseOut,
  Curves.slowMiddle,
];

extension on Curve{
  String get iconPath{
    switch (this){
      case Curves.bounceIn:
        return "";
      case Curves.bounceInOut:
        return "";
      case Curves.bounceOut:
        return "";
      default:
        return "";
    }
  }
}

class CurveField extends StatelessWidget {
  final void Function(Curve) onChanged;
  final Curve value;

  const CurveField({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final curves in values)
          AppRadioButton(
            isSelected: value == curves,
            iconPath: curves.iconPath,
            onSelected: () => onChanged(curves),
          ),
      ],
    );
  }
}

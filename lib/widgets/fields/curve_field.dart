import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/icon_options.dart';

const values = [
  Curves.bounceIn,
  Curves.bounceInOut,
  Curves.bounceOut,
  Curves.easeIn,
  Curves.easeInOut,
  Curves.easeOut,
  Curves.elasticIn,
  Curves.elasticInOut,
  Curves.elasticOut,
  Curves.fastOutSlowIn,
  Curves.linear,
];

extension on Curve {
  String get iconPath {
    switch (this) {
      case Curves.bounceIn:
        return "assets/bounceIn.svg";
      case Curves.bounceInOut:
        return "assets/bounceInOut.svg";
      case Curves.bounceOut:
        return "assets/bounceOut.svg";
      case Curves.easeIn:
        return "assets/curveEaseIn.svg";
      case Curves.easeInOut:
        return "assets/curveEaseInOut.svg";
      case Curves.easeOut:
        return "assets/curveEaseOut.svg";
      case Curves.fastOutSlowIn:
        return "assets/curveFastOutEaseIn.svg";
      case Curves.linear:
        return "assets/curveLinear.svg";
      case Curves.elasticIn:
        return "assets/elasticIn.svg";
      case Curves.elasticInOut:
        return "assets/elasticInOut.svg";
      case Curves.elasticOut:
        return "assets/elasticOut.svg";
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
    return IconOptions(
      onChanged: (dynamic val) => onChanged(val as Curve),
      value: value,
      options: values,
      iconPath: (dynamic value) => (value as Curve).iconPath,
    );
  }
}

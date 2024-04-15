import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/icon_options.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

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

class CurveField extends PropertyWidget<Curve> {

  const CurveField({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return IconOptions(
      onChanged: (value) => onChanged(ValueHolder(value, true)),
      value: value,
      options: values,
      iconPath: (value) => (value).iconPath,
    );
  }
}

class CurvePreviewer extends StatelessWidget {
  const CurvePreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<Curve>(
      title: "Curve",
      values: values,
      propertyBuilder: (onChanged, value) {
        return CurveField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

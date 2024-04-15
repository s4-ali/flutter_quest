import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';
import 'package:flutter_quest/widgets/icon_options.dart';

extension on BoxFit {
  String get iconPath {
    switch (this) {
      case BoxFit.fill:
        return "assets/boxFitFill.svg";
      case BoxFit.contain:
        return "assets/boxFitContain.svg";
      case BoxFit.cover:
        return "assets/boxFitCover.svg";
      case BoxFit.fitWidth:
        return "assets/boxFitWidthFit.svg";
      case BoxFit.fitHeight:
        return "assets/boxFitHeightFit.svg";
      case BoxFit.scaleDown:
        return "assets/boxFitScaleDown.svg";
      case BoxFit.none:
        return "assets/boxFitNone.svg";
      default:
        return "";
    }
  }
}

class BoxFitField extends PropertyWidget<BoxFit> {
  const BoxFitField({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return IconOptions(
      onChanged: (dynamic val) => onChanged(ValueHolder(val as BoxFit,true)),
      value: value,
      options: BoxFit.values,
      iconPath: (dynamic value) => (value as BoxFit).iconPath,
    );
  }
}

class BoxFitPreviewer extends StatelessWidget {
  const BoxFitPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<BoxFit>(
      title: "Box Fit",
      values: BoxFit.values,
      propertyBuilder: (onChanged, value) {
        return BoxFitField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
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

class BoxFitField extends StatelessWidget {
  final void Function(BoxFit) onChanged;
  final BoxFit value;

  const BoxFitField({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return IconOptions(
      onChanged: (dynamic val) => onChanged(val as BoxFit),
      value: value,
      options: BoxFit.values,
      iconPath: (dynamic value) => (value as BoxFit).iconPath,
    );
  }
}

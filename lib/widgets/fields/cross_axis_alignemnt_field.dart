import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/icon_options.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

extension on CrossAxisAlignment {
  String get iconPath {
    switch (this) {
      case CrossAxisAlignment.start:
        return "assets/startVertical.svg";
      case CrossAxisAlignment.end:
        return "assets/endVertical.svg";
      case CrossAxisAlignment.center:
        return "assets/center.svg";
      case CrossAxisAlignment.baseline:
        return "assets/baseline.svg";
      case CrossAxisAlignment.stretch:
        return "assets/stretch.svg";
    }
  }
}

class CrossAxisAlignmentField extends PropertyWidget<CrossAxisAlignment>  {
  const CrossAxisAlignmentField({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return IconOptions(
      onChanged: (val) => onChanged(ValueHolder(val, true)),
      value: value,
      options: CrossAxisAlignment.values,
      iconPath: (value) => (value).iconPath,
    );
  }
}

class CrossAxisAlignmentPreviewer extends StatelessWidget {
  const CrossAxisAlignmentPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<CrossAxisAlignment>(
      title: "Cross Axis Alignment",
      values: CrossAxisAlignment.values,
      propertyBuilder: (onChanged, value) {
        return CrossAxisAlignmentField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

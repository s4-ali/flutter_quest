import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

class RangePickerNumberField extends PropertyWidget<num> {
  const RangePickerNumberField({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _AppRangePicker(),
      ],
    );
  }
}

class _AppRangePicker extends StatefulWidget {
  @override
  _AppRangePickerState createState() => _AppRangePickerState();
}

class _AppRangePickerState extends State<_AppRangePicker> {
  double selectedValue = 50.0;
  int numberOfDots = 7;
  Color thumbColor = const Color(0xFF808080);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MouseRegion(
          onEnter: (v) {
            setState(() {
              thumbColor = const Color(0xFFFFFFFF);
            });
          },
          onExit: (v) {
            setState(() {
              thumbColor = const Color(0xFF808080);
            });
          },
          child: Slider(
            activeColor: Color(0xFFFFFFFF),
            inactiveColor: Color(0xFF808080),
            thumbColor: thumbColor,
            secondaryActiveColor: Colors.black,
            secondaryTrackValue: 1,
            value: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value;
              });
            },
            min: 0,
            max: 100,
            divisions: 10,
            label: selectedValue.round().toString(),
          ),
        ),
        Text('Selected Value: ${selectedValue.round()}'),
      ],
    );
  }
}

class NumberRangePreviewer extends StatelessWidget {
  const NumberRangePreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<num>(
      values: const [45, 79, 65, 1, 63],
      propertyBuilder: (onChanged, value) {
        return RangePickerNumberField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

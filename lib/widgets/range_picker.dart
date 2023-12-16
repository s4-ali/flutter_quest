import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/text_field.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class AppRangePicker extends StatefulWidget {
  final void Function(double) onChanged;
  final double min;
  final double max;
  final double stepSize;


  const AppRangePicker(
      {super.key, required this.onChanged, this.min = 0, this.max = 100, this.stepSize = 1});

  @override
  State<AppRangePicker> createState() => _AppRangePickerState();
}

class _AppRangePickerState extends State<AppRangePicker> {
  double selectedValue = 0.0;
  bool hovering = false;

  @override
  void initState() {
    selectedValue = widget.min;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color thumbColor = hovering
        ? const Color(0xFFFFFFFF)
        : selectedValue > widget.min
            ? const Color(0xFF0099FF)
            : const Color(0xFF808080);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MouseRegion(
          onEnter: (v) {
            setState(() {
              hovering = true;
              thumbColor = const Color(0xFFFFFFFF);
            });
          },
          onExit: (v) {
            setState(() {
              hovering = false;
              thumbColor = const Color(0xFF808080);
            });
          },
          child: SfSlider(
            onChanged: (value) {
              selectedValue = double.parse(value.toStringAsFixed(2));
              widget.onChanged(selectedValue);
            },
            min: widget.min,
            max: widget.max,
            value: selectedValue,
            activeColor: const Color(0xFFFFFFFF),
            inactiveColor: const Color(0xFF35363A),
            trackShape: const SfTrackShape(),
            interval: 10,
            showDividers: true,
            stepSize: 1,
            dividerShape: const SfDividerShape(),

            thumbIcon: Icon(
              Icons.circle,
              size: 20,
              color: thumbColor,
            ),
            thumbShape: const SfThumbShape(),
          ),
        ),
        SizedBox(
          width: 50,
          height: 30,
          child: AppTextField(
            contentPadding: const EdgeInsets.only(left: 5),
            onChanged: (value) {
              double myValue = double.parse(value);
              widget.onChanged(
                double.parse(myValue.toStringAsFixed(2)),
              );
              selectedValue = double.parse(
                myValue.toStringAsFixed(2),
              );
            },
            controller: TextEditingController(text: selectedValue.toString()),
          ),
        ),
      ],
    );
  }
}

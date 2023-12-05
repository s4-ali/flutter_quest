import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/text_field.dart';

class AppRangePicker extends StatefulWidget {
  final void Function(num) onChanged;

  const AppRangePicker({super.key, required this.onChanged});

  @override
  State<AppRangePicker> createState() => _AppRangePickerState();
}

class _AppRangePickerState extends State<AppRangePicker> {
  num selectedValue = 0.0;
  int numberOfDots = 7;
  Color thumbColor = const Color(0xFF808080);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          child: MouseRegion(
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
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 2,
                thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8),
                overlayColor: Colors.red,
              ),
              child: Slider(
                activeColor: const Color(0xFFFFFFFF),
                inactiveColor: const Color(0xFF808080),
                thumbColor: thumbColor,
                secondaryTrackValue: 1,
                value: selectedValue.toDouble(),
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                  widget.onChanged(value);
                },
                min: 0,
                max: 100,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 50,
          height: 30,
          child: AppTextField(
            contentPadding: const EdgeInsets.only(left: 5),
            onChanged: (value) {
              widget.onChanged(num.parse(value));
              selectedValue = num.parse(value);
            },
            controller: TextEditingController(text: selectedValue.toString()),
          ),
        ),
      ],
    );
  }
}

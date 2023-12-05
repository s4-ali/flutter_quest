import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/text_field.dart';

class AppRangePicker extends StatefulWidget {
  final void Function(double) onChanged;

  const AppRangePicker({super.key, required this.onChanged});

  @override
  State<AppRangePicker> createState() => _AppRangePickerState();
}

class _AppRangePickerState extends State<AppRangePicker> {
  double selectedValue = 0.0;
  Color thumbColor = const Color(0xFF808080);

  @override
  Widget build(BuildContext context) {
    return Row(
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
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 2,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8),
              overlayColor: Colors.red,
            ),
            child: SizedBox(
              width: 250,
              child: Slider(
                activeColor: const Color(0xFFFFFFFF),
                inactiveColor: const Color(0xFF808080),
                secondaryActiveColor: Colors.red,
                thumbColor: thumbColor,
                secondaryTrackValue: 1,
                value: selectedValue.toDouble(),
                onChanged: (value) {
                  double myValue = double.parse(value.toStringAsFixed(2));
                  setState(() {
                    selectedValue = myValue;
                  });
                  widget.onChanged(myValue);
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

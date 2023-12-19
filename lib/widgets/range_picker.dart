import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/text_field.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class AppRangePicker extends StatefulWidget {
  final void Function(double) onChanged;
  final double min;
  final double max;
  final double stepSize;

  const AppRangePicker({
    super.key,
    required this.onChanged,
    this.min = 0,
    this.max = 100,
    this.stepSize = 1,
  });

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
        : selectedValue == widget.min
            ? const Color(0xFF808080) : const Color(0xFF0099FF);

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
            activeColor: thumbColor,
            inactiveColor: const Color(0xFF35363A),
            trackShape: _SfTrackShape(),
            interval: 10,
            showDividers: true,
            stepSize: widget.stepSize,
            dividerShape: _DividerShape(),

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
              selectedValue = double.parse(myValue.toStringAsFixed(2));
            },
            controller: TextEditingController(text: selectedValue.toString()),
          ),
        ),
      ],
    );
  }
}

class _SfTrackShape extends SfTrackShape {
  @override
  void paint(PaintingContext context, Offset offset, Offset? thumbCenter,
      Offset? startThumbCenter, Offset? endThumbCenter,
      {required RenderBox parentBox,
        required themeData,
        SfRangeValues? currentValues,
        dynamic currentValue,
        required Animation<double> enableAnimation,
        required Paint? inactivePaint,
        required Paint? activePaint,
        required TextDirection textDirection}) {

    bool isActive;

    switch (textDirection) {
      case TextDirection.ltr:
        isActive = offset.dx <= thumbCenter!.dx;
        break;
      case TextDirection.rtl:
        isActive = offset.dx >= thumbCenter!.dx;
        break;
    }

    Paint paint = Paint()
      ..color = isActive ? const Color(0xFFFFFFFF): const Color(0xFF35363A);
    super.paint(context, offset, thumbCenter, startThumbCenter, endThumbCenter,
        parentBox: parentBox,
        themeData: themeData,
        enableAnimation: enableAnimation,
        inactivePaint: inactivePaint,
        activePaint: paint,
        textDirection: textDirection);
  }
}

class _DividerShape extends SfDividerShape {
  @override
  void paint(PaintingContext context, Offset center, Offset? thumbCenter,
      Offset? startThumbCenter, Offset? endThumbCenter,
      {required RenderBox parentBox,
        required themeData,
        SfRangeValues? currentValues,
        dynamic currentValue,
        required Paint? paint,
        required Animation<double> enableAnimation,
        required TextDirection textDirection}) {
    bool isActive;

    switch (textDirection) {
      case TextDirection.ltr:
        isActive = center.dx <= thumbCenter!.dx;
        break;
      case TextDirection.rtl:
        isActive = center.dx >= thumbCenter!.dx;
        break;
    }

    context.canvas.drawRect(
        Rect.fromCenter(center: center, width: 2.0, height: 7.0),
        Paint()
          ..isAntiAlias = true
          ..style = PaintingStyle.fill
          ..color = isActive ? const Color(0xFFFFFFFF): const Color(0xFF35363A));
  }
}
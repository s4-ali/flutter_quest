import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/fields/padding_field/padding_text_fields.dart';

class OnlyPadding extends StatefulWidget {
  final Function(EdgeInsets) onChanged;

  const OnlyPadding({
    super.key,
  required this.onChanged,
  });

  @override
  State<OnlyPadding> createState() => _OnlyPaddingState();
}

class _OnlyPaddingState extends State<OnlyPadding> {
  double top=0.0;
  double bottom=0.0;
  double right=0.0;
  double left=0.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 124,
      width: 124,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: Colors.white,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PaddingTextField(
              fontSize: 12,
              fieldWidth: 40,
              fieldHeight: 40,
              onChanged: (value) {
                top=double.parse(value);
                widget.onChanged(EdgeInsets.only(top: double.parse(value)));
              },
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PaddingTextField(
                    fontSize: 12,
                    fieldWidth: 40,
                    fieldHeight: 40,
                    onChanged: (value) {
                      left=double.parse(value);
                      widget.onChanged(EdgeInsets.only(top: top, left: left));
                    },
                  ),
                  const Icon(Icons.add, size: 30),
                  PaddingTextField(
                    fontSize: 12,
                    fieldWidth: 40,
                    fieldHeight: 40,
                    onChanged: (value) {
                      right=double.parse(value);
                      widget.onChanged(EdgeInsets.only(top: top, left: left, right: right));
                    },
                  ),
                ],
              ),
            ),
            PaddingTextField(
              fontSize: 12,
              fieldWidth: 40,
              fieldHeight: 40,
              onChanged: (value) {
                setState(() {
                  bottom=double.parse(value);
                  widget.onChanged(EdgeInsets.only(top: top, left: left, right: right, bottom: bottom));
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

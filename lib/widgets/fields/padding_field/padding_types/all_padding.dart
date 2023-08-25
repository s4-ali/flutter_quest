import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/fields/padding_field/padding_text_fields.dart';

class AllPadding extends StatefulWidget {

  final Function(EdgeInsets) onChanged;

  const AllPadding({
    super.key,
    required this.onChanged,
  });

  @override
  State<AllPadding> createState() => _AllPaddingState();

}

class _AllPaddingState extends State<AllPadding> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 6),
      alignment: Alignment.center,
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
        child: PaddingTextField(
            fontSize: 18,
            fieldWidth: 60,
            fieldHeight: 60,
            onChanged: (value) {
              setState(() {
                widget.onChanged(EdgeInsets.all(double.parse(value)));
              });
            },
          ),
      ),

    );
  }
}

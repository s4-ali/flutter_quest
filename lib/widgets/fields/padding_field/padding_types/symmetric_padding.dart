import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/fields/padding_field/padding_text_fields.dart';

class SymmetricPadding extends StatefulWidget {
  final Function(EdgeInsets) onChanged;

  const SymmetricPadding({
    super.key,
    required this.onChanged,
  });

  @override
  State<SymmetricPadding> createState() => _SymmetricPaddingState();
}

class _SymmetricPaddingState extends State<SymmetricPadding> {
  String vertical="0.0";
  String horizontal = "0.0";
  double verticals=0.0;
  double horizontals=0.0;

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
                  setState(() {
                    vertical=value;
                    verticals=double.parse(value);
                    widget.onChanged(EdgeInsets.symmetric(vertical: verticals));
                  });
                },
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    PaddingTextField(
                      fontSize: 12,
                      fieldWidth: 40,
                      fieldHeight: 40,
                      onChanged: (value) {
                        setState(() {
                          horizontal=value;
                          horizontals=double.parse(value);
                          widget.onChanged(EdgeInsets.symmetric(horizontal: horizontals, vertical: verticals));
                        });
                      },
                    ),
                    const Icon(Icons.add, size: 30),
                SizedBox(
                  width: 40,
                  height: 40,
                  child: TextField(
                    readOnly: true,
                    maxLines: 1,
                    style: const TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(0.0),
                      hintText: horizontal,
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ),
                  ],
                ),
              ),
              SizedBox(
                width: 40,
                height: 40,
                child: TextField(
                  readOnly: true,
                  maxLines: 1,
                  style: const TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(0.0),
                    hintText: vertical,
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ),
            ], ),
      ),
    );
  }
}
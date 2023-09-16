import 'package:flutter/material.dart';

enum PaddingType {
  all,
  only,
  symmetric,
}

class PaddingTypeLayouts extends StatefulWidget {
  final Function(EdgeInsets) onChanged;
  final PaddingType paddingType;

  const PaddingTypeLayouts({
    Key? key,
    required this.onChanged,
    required this.paddingType,
  }) : super(key: key);

  @override
  State<PaddingTypeLayouts> createState() => _PaddingTypeLayoutsState();
}

class _PaddingTypeLayoutsState extends State<PaddingTypeLayouts> {
  double top = 0.0;
  double bottom = 0.0;
  double left = 0.0;
  double right = 0.0;
  double vertical = 0.0;
  double horizontal = 0.0;

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
        child: widget.paddingType == PaddingType.all
            ? paddingTypeAll()
            : widget.paddingType == PaddingType.only
                ? paddingTypeOnly()
                : paddingTypeSymmetric(),
      ),
    );
  }

  Widget paddingTypeAll() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: BorderlessTextField(
            onChanged: (value) {
              setState(() {
                widget.onChanged(EdgeInsets.all(value));
              });
            },
            paddingType: PaddingType.all),
      ),
    );
  }

  Widget paddingTypeOnly() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BorderlessTextField(
              onChanged: (value) {
                setState(() {
                  top = value;
                  widget.onChanged(EdgeInsets.only(
                    top: top,
                    left: left,
                    right: right,
                    bottom: bottom,
                  ));
                });
              },
              paddingType: PaddingType.only),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BorderlessTextField(
                    onChanged: (value) {
                      setState(() {
                        left = value;
                        widget.onChanged(EdgeInsets.only(
                          top: top,
                          left: left,
                          right: right,
                          bottom: bottom,
                        ));
                      });
                    },
                    paddingType: PaddingType.only),
                const Icon(Icons.add, size: 30),
                BorderlessTextField(
                    onChanged: (value) {
                      setState(() {
                        right = value;
                        widget.onChanged(EdgeInsets.only(
                          top: top,
                          left: left,
                          right: right,
                          bottom: bottom,
                        ));
                      });
                    },
                    paddingType: PaddingType.only),
              ],
            ),
          ),
          BorderlessTextField(
              onChanged: (value) {
                setState(() {
                  bottom = value;
                  widget.onChanged(EdgeInsets.only(
                    top: top,
                    left: left,
                    right: right,
                    bottom: bottom,
                  ));
                });
              },
              paddingType: PaddingType.only),
        ],
      ),
    );
  }

  Widget paddingTypeSymmetric() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BorderlessTextField(
              onChanged: (value) {
                setState(() {
                  vertical = value;
                  widget.onChanged(EdgeInsets.symmetric(
                    vertical: vertical,
                    horizontal: horizontal,
                  ),
                  );
                });
              },
              paddingType: PaddingType.symmetric),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BorderlessTextField(
                    onChanged: (value) {
                      setState(() {
                        horizontal = value;
                        widget.onChanged(EdgeInsets.symmetric(
                          vertical: vertical,
                          horizontal: horizontal,
                        ),);
                      });
                    },
                    paddingType: PaddingType.symmetric),
                const Icon(Icons.add, size: 30),
                SymmetricOppositeField(hint: horizontal.toString(),),
              ],
            ),
          ),
          SymmetricOppositeField(hint: vertical.toString(),),
        ],
      ),
    );
  }
}

class BorderlessTextField extends StatelessWidget {
  final Function(double) onChanged;
  final PaddingType paddingType;
  final EdgeInsets paddingValue = EdgeInsets.zero;

  const BorderlessTextField({
    super.key,
    required this.onChanged,
    required this.paddingType,
  });

  @override
  Widget build(BuildContext context) {


    return SizedBox(
      width: paddingType == PaddingType.all? 60 : 40,
      height: paddingType == PaddingType.all ? 60 : 40,
      child: TextField(
        onChanged: (value) {
          onChanged(double.parse(value));
        },
        maxLines: 1,
        style: TextStyle(fontSize: paddingType == PaddingType.all ? 18 : 12),
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(0.0),
          hintText: "0.0",
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}

class SymmetricOppositeField extends StatelessWidget {
  final String hint;

  const SymmetricOppositeField({
    super.key,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: TextField(
        readOnly: true,
        maxLines: 1,
        style: const TextStyle(fontSize: 12),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(0.0),
          hintText: hint,
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
    );
  }
}

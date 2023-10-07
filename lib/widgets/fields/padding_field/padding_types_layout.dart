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
            ? PaddingTypeAll(onChanged: widget.onChanged)
            : widget.paddingType == PaddingType.only
                ? PaddingTypeOnly(onChanged: widget.onChanged)
                : PaddingTypeSymmetric(onChanged: widget.onChanged),
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
      width: paddingType == PaddingType.all ? 60 : 40,
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

class PaddingTypeAll extends StatelessWidget {
  final Function(EdgeInsets) onChanged;

  const PaddingTypeAll({Key? key, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: BorderlessTextField(
          onChanged: (value) {
            onChanged(EdgeInsets.all(value));
          },
          paddingType: PaddingType.all,
        ),
      ),
    );
  }
}

class PaddingTypeOnly extends StatefulWidget {
  final Function(EdgeInsets) onChanged;

  const PaddingTypeOnly({Key? key, required this.onChanged}) : super(key: key);

  @override
  _PaddingTypeOnlyState createState() => _PaddingTypeOnlyState();
}

class _PaddingTypeOnlyState extends State<PaddingTypeOnly> {
  double top = 0.0;
  double bottom = 0.0;
  double right = 0.0;
  double left = 0.0;

  void updateValues({
    double? topValue,
    double? bottomValue,
    double? rightValue,
    double? leftValue,
  }) {
    setState(() {
      top = topValue ?? top;
      bottom = bottomValue ?? bottom;
      right = rightValue ?? right;
      left = leftValue ?? left;

      widget.onChanged(EdgeInsets.only(
        top: top,
        bottom: bottom,
        right: right,
        left: left,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BorderlessTextField(
            onChanged: (value) => updateValues(topValue: value),
            paddingType: PaddingType.only,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BorderlessTextField(
                  onChanged: (value) => updateValues(leftValue: value),
                  paddingType: PaddingType.only,
                ),
                const Icon(Icons.add, size: 30),
                BorderlessTextField(
                  onChanged: (value) => updateValues(rightValue: value),
                  paddingType: PaddingType.only,
                ),
              ],
            ),
          ),
          BorderlessTextField(
            onChanged: (value) => updateValues(bottomValue: value),
            paddingType: PaddingType.only,
          ),
        ],
      ),
    );
  }
}

class PaddingTypeSymmetric extends StatefulWidget {
  final Function(EdgeInsets) onChanged;

  const PaddingTypeSymmetric({Key? key, required this.onChanged}) : super(key: key);

  @override
  _PaddingTypeSymmetricState createState() => _PaddingTypeSymmetricState();
}

class _PaddingTypeSymmetricState extends State<PaddingTypeSymmetric> {
  double vertical = 0.0;
  double horizontal = 0.0;

  void updatePadding({double? verticalValue, double? horizontalValue}) {
    setState(() {
      vertical = verticalValue ?? vertical;
      horizontal = horizontalValue ?? horizontal;
      widget.onChanged(EdgeInsets.symmetric(
        vertical: vertical,
        horizontal: horizontal,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BorderlessTextField(
            onChanged: (value) => updatePadding(verticalValue: value),
            paddingType: PaddingType.symmetric,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BorderlessTextField(
                  onChanged: (value) => updatePadding(horizontalValue: value),
                  paddingType: PaddingType.symmetric,
                ),
                const Icon(Icons.add, size: 30),
                SymmetricOppositeField(
                  hint: horizontal.toString(),
                ),
              ],
            ),
          ),
          SymmetricOppositeField(
            hint: vertical.toString(),
          ),
        ],
      ),
    );
  }
}
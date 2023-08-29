import 'package:flutter/material.dart';

enum PaddingTypeSelection {
  all,
  only,
  symmetric,
}

class PaddingTypes extends StatefulWidget {
  final Function(EdgeInsets) onChanged;
  final PaddingTypeSelection paddingType;

  PaddingTypes({
    Key? key,
    required this.onChanged,
    required this.paddingType,
  }) : super(key: key);

  @override
  State<PaddingTypes> createState() => _PaddingTypesState();
}

class _PaddingTypesState extends State<PaddingTypes> {
  double top = 0.0;
  double bottom = 0.0;
  double left = 0.0;
  double right = 0.0;
  double vertical = 0.0;
  double horizontal = 0.0;

  @override
  Widget build(BuildContext context) {
    Widget paddingWidget;

    switch (widget.paddingType) {
      case PaddingTypeSelection.all:
        paddingWidget = _allPaddingWidget();
        break;
      case PaddingTypeSelection.only:
        paddingWidget = _onlyPaddingWidget();
        break;
      case PaddingTypeSelection.symmetric:
        paddingWidget = _symmetricPaddingWidget();
        break;
    }

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
        child: paddingWidget,
      ),
    );
  }

  Widget _allPaddingWidget() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: BorderlessTextField(
            onChanged: (value) {
              setState(() {
                widget.onChanged(EdgeInsets.all(value));
              });
            },
            paddingType: PaddingTypeSelection.all),
      ),
    );
  }

  Widget _onlyPaddingWidget() {
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
              paddingType: PaddingTypeSelection.only),
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
                    paddingType: PaddingTypeSelection.only),
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
                    paddingType: PaddingTypeSelection.only),
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
              paddingType: PaddingTypeSelection.only),
        ],
      ),
    );
  }

  Widget _symmetricPaddingWidget() {
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
                  ));
                });
              },
              paddingType: PaddingTypeSelection.symmetric),
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
                        ));
                      });
                    },
                    paddingType: PaddingTypeSelection.symmetric),
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
  final PaddingTypeSelection paddingType;

  BorderlessTextField({
    super.key,
    required this.onChanged,
    required this.paddingType,
  });

  EdgeInsets paddingValue = EdgeInsets.zero;

  @override
  Widget build(BuildContext context) {
    String type;

    switch (paddingType) {
      case PaddingTypeSelection.all:
        type = "all";
        break;
      case PaddingTypeSelection.only:
        type = "only";
        break;
      case PaddingTypeSelection.symmetric:
        type = "symmetric";
        break;
    }

    return SizedBox(
      width: type == "all" ? 60 : 40,
      height: type == "all" ? 60 : 40,
      child: TextField(
        onChanged: (value) {
          onChanged(double.parse(value));
        },
        maxLines: 1,
        style: TextStyle(fontSize: type == "all" ? 18 : 12),
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

import 'package:flutter/material.dart';

enum EdgeInsetsType {
  all,
  only,
  symmetric,
}

class EdgeInsetsTypeLayouts extends StatefulWidget {
  final Function(EdgeInsets) onChanged;
  final EdgeInsetsType edgeInsetsType;

  const EdgeInsetsTypeLayouts({
    Key? key,
    required this.onChanged,
    required this.edgeInsetsType,
  }) : super(key: key);

  @override
  State<EdgeInsetsTypeLayouts> createState() => _EdgeInsetsTypeLayoutsState();
}

class _EdgeInsetsTypeLayoutsState extends State<EdgeInsetsTypeLayouts> {

  double top = 0.0;
  double bottom = 0.0;
  double left = 0.0;
  double right = 0.0;
  double vertical = 0.0;
  double horizontal = 0.0;

  TextEditingController allController = TextEditingController();
  TextEditingController topController = TextEditingController();
  TextEditingController bottomController = TextEditingController();
  TextEditingController leftController = TextEditingController();
  TextEditingController rightController = TextEditingController();
  TextEditingController verticalController = TextEditingController();
  TextEditingController horizontalController = TextEditingController();

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
        child: widget.edgeInsetsType == EdgeInsetsType.all
            ? _allTypeEdgeInsets()
            : widget.edgeInsetsType == EdgeInsetsType.only
                ? _onlyTypeEdgeInsets()
                : _symmetricTypeEdgeInsets(),
      ),
    );
  }

  void funClearData() {
    setState(() {
      allController.clear();
      topController.clear();
      bottomController.clear();
      leftController.clear();
      rightController.clear();
      verticalController.clear();
      horizontalController.clear();
    });
  }

  Widget _allTypeEdgeInsets() {
    funClearData();
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: BorderlessTextField(
          onChanged: (value) {
            setState(() {
              widget.onChanged(EdgeInsets.all(value));
            });
          },
          edgeInsetsType: EdgeInsetsType.all,
          controller: allController,
        ),
      ),
    );
  }

  Widget _onlyTypeEdgeInsets() {
    funClearData();
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

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BorderlessTextField(
            onChanged: (value) => updateValues(topValue: value),
            edgeInsetsType: EdgeInsetsType.only,
            controller: topController,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BorderlessTextField(
                  onChanged: (value) => updateValues(leftValue: value),
                  edgeInsetsType: EdgeInsetsType.only,
                  controller: leftController,
                ),
                const Icon(Icons.add, size: 30),
                BorderlessTextField(
                  onChanged: (value) => updateValues(rightValue: value),
                  edgeInsetsType: EdgeInsetsType.only,
                  controller: rightController,
                ),
              ],
            ),
          ),
          BorderlessTextField(
            onChanged: (value) => updateValues(bottomValue: value),
            edgeInsetsType: EdgeInsetsType.only,
            controller: bottomController,
          ),
        ],
      ),
    );
  }

  Widget _symmetricTypeEdgeInsets() {
    funClearData();
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

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BorderlessTextField(
            onChanged: (value) => updatePadding(verticalValue: value),
            edgeInsetsType: EdgeInsetsType.symmetric,
            controller: verticalController,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BorderlessTextField(
                  onChanged: (value) => updatePadding(horizontalValue: value),
                  edgeInsetsType: EdgeInsetsType.symmetric,
                  controller: horizontalController,
                ),
                const Icon(Icons.add, size: 30),
                SymmetricOppositeField(
                  hint: horizontal.toString(),
                  controller: horizontalController,
                ),
              ],
            ),
          ),
          SymmetricOppositeField(
            hint: vertical.toString(),
            controller: verticalController,
          ),
        ],
      ),
    );
  }
}

class BorderlessTextField extends StatefulWidget {
  final Function(double) onChanged;
  final EdgeInsetsType edgeInsetsType;
  final TextEditingController controller;

  const BorderlessTextField({
    super.key,
    required this.onChanged,
    required this.edgeInsetsType,
    required this.controller,
  });

  @override
  State<BorderlessTextField> createState() => _BorderlessTextFieldState();
}

class _BorderlessTextFieldState extends State<BorderlessTextField> {
  final EdgeInsets edgeInsetsValue = EdgeInsets.zero;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.edgeInsetsType == EdgeInsetsType.all ? 60 : 40,
      height: widget.edgeInsetsType == EdgeInsetsType.all ? 60 : 40,
      child: TextField(
        controller: widget.controller,
        onChanged: (value) {
          try {
            if (value.isNotEmpty) {
              widget.onChanged(double.parse(value));
              print(value);
            }
          } catch (e) {
            print(e);
          }
        },
        maxLines: 1,
        style: TextStyle(
          fontSize: widget.edgeInsetsType == EdgeInsetsType.all ? 18 : 12,
        ),
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

class SymmetricOppositeField extends StatefulWidget {
  final String hint;
  final TextEditingController controller;

  const SymmetricOppositeField({
    super.key,
    required this.hint,
    required this.controller,
  });

  @override
  State<SymmetricOppositeField> createState() => _SymmetricOppositeFieldState();
}

class _SymmetricOppositeFieldState extends State<SymmetricOppositeField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: TextField(
        controller: widget.controller,
        readOnly: true,
        maxLines: 1,
        style: const TextStyle(fontSize: 12),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(0.0),
          hintText: widget.hint,
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

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Clear TextField Example'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: textController,
                decoration: InputDecoration(labelText: 'Enter text'),
                onChanged: (value) {
                  print(value);
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Clear the TextField text
                  textController.clear();
                },
                child: Text('Clear Text'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

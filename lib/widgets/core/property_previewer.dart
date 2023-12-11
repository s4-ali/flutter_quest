import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';

class PropertyPreviewer<U> extends StatefulWidget {
  final List<U> values;
  final PropertyWidget<U> Function(void Function(U), U) propertyBuilder;

  final String Function(U)? titleBuilder;

  //Add assertion that values shouldn't be empty
  const PropertyPreviewer({
    super.key,
    required this.values,
    required this.propertyBuilder,
    this.titleBuilder,
  }) : assert(values.length > 0, 'Values cannot be empty');

  @override
  State<PropertyPreviewer<U>> createState() => _PropertyPreviewerState<U>();
}

class _PropertyPreviewerState<U> extends State<PropertyPreviewer<U>> {
  int _currentIndex = 0;
  U? value;

  @override
  Widget build(BuildContext context) {
    final value = this.value ?? widget.values[_currentIndex];
    final title = widget.titleBuilder?.call(value) ?? value.toString();
    return Material(
      child: SizedBox(
        width: 350,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: _prevValue,
                    icon: const Icon(Icons.arrow_left),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        title,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: _nextValue,
                    icon: const Icon(Icons.arrow_right),
                  ),
                ],
              ),
              widget.propertyBuilder(
                onChanged,
                value,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _nextValue() {
    setState(() {
      value = null;
      _currentIndex =
          _currentIndex == widget.values.length - 1 ? 0 : _currentIndex + 1;
    });
  }

  void _prevValue() {
    setState(() {
      value = null;
      _currentIndex =
          _currentIndex == 0 ? widget.values.length - 1 : _currentIndex - 1;
    });
  }

  void onChanged(U val) {
    setState(() {
      value = val;
      if (widget.values.contains(val)) {
        _currentIndex = widget.values.indexOf(val);
        value = null;
      }
    });
  }
}

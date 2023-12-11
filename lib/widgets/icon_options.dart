import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/radio_button.dart';

class IconOptions<T> extends StatefulWidget {
  final void Function(T) onChanged;
  final T value;
  final List<T> options;
  final String Function(T) iconPath;

  const IconOptions({
    super.key,
    required this.onChanged,
    required this.value,
    required this.options,
    required this.iconPath,
  });

  @override
  State<IconOptions<T>> createState() => _IconOptionsState<T>();
}

class _IconOptionsState<T> extends State<IconOptions<T>> {
  T? hoveredValue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            direction: Axis.horizontal,
            runAlignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: [
              for (final value in widget.options)
                AppRadioButton(
                  isSelected: widget.value == value,
                  iconPath: widget.iconPath(value),
                  onSelected: () => widget.onChanged(value),
                  onHover: (bool hovering) {
                    setState(() {
                      hoveredValue = hovering ? value : null;
                    });
                  },
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              hoveredValue?.toString() ?? widget.value.toString(),
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}

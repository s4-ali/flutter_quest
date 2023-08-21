import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';

import 'title_text.dart';

class FieldTitle extends StatefulWidget {
  final PropertyParams params;
  final Widget? child;
  final void Function(dynamic) onChanged;

  const FieldTitle({
    super.key,
    required this.params,
    this.child,
    required this.onChanged,
  });

  @override
  State<FieldTitle> createState() => _FieldTitleState();
}

class _FieldTitleState extends State<FieldTitle> {
  bool get isEnabled => widget.child != null;

  @override
  Widget build(BuildContext context) {
    final optionalIconButton = widget.params.isOptional
        ? IconButton(
            padding: const EdgeInsets.all(0),
            onPressed: toggleField,
            icon: Icon(
              isEnabled ? Icons.close : Icons.add,
              size: 24,
            ),
          )
        : null;
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TitleText(widget.params.title),
            SizedBox(
              height: 24,
              width: 24,
              child: optionalIconButton,
            )
          ],
        ),
        if (isEnabled) ...[
          const SizedBox(
            height: 6,
          ),
          widget.child!,
        ]
      ],
    );
  }

  void toggleField() {
    if (isEnabled) {
      widget.onChanged(null);
    } else {
      widget.onChanged(widget.params.defaultValue!);
    }
  }
}

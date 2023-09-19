import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'title_text.dart';

class FieldTitle extends StatefulWidget {
  final PropertyParams params;
  final Widget? child;
  final void Function(dynamic) onChanged;
  final bool inline;

  const FieldTitle({
    super.key,
    required this.params,
    this.child,
    required this.onChanged,
    this.inline = false,
  });

  @override
  State<FieldTitle> createState() => _FieldTitleState();
}

class _FieldTitleState extends State<FieldTitle> {
  bool get isEnabled => widget.child != null;

  @override
  Widget build(BuildContext context) {
    final title = TitleText(widget.params.title);
    final optionalIconButton = IconButton(
      padding: const EdgeInsets.all(0),
      onPressed: toggleField,
      icon: Icon(
        isEnabled ? Icons.close : Icons.add,
        size: 24,
      ),
    );
    final fixedSizedOptionalIconButton = SizedBox(
      height: 24,
      width: 24,
      child: widget.params.isOptional ? optionalIconButton : null,
    );
    if (widget.inline) {
      return SizedBox(
        height: 32,
        child: Center(
          child: Row(
            children: [
              title,
              const Spacer(),
              if (isEnabled) widget.child!,
              if (widget.params.isOptional)
                SizedBox(
                  height: 24,
                  width: 24,
                  child: optionalIconButton,
                )
            ],
          ),
        ),
      );
    } else {
      final titleRow = Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          title,
          fixedSizedOptionalIconButton,
        ],
      );
      if(isEnabled) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            titleRow,
            if (isEnabled) ...[
              const SizedBox(
                height: 6,
              ),
              widget.child!,
            ]
          ],
        );
      } else {
        return SizedBox(
          height: 32,
          child: Center(child: titleRow),
        );
      }
    }
  }

  void toggleField() {
    if (isEnabled) {
      widget.onChanged(null);
    } else {
      widget.onChanged(widget.params.defaultValue!);
    }
  }
}

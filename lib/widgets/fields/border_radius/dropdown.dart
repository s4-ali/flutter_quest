import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/dropdown_button.dart';

import 'border_radius_field.dart';

class BorderRadiusTypeDropdown extends StatelessWidget {
  final BorderRadiusType value;
  final void Function(BorderRadiusType) onChanged;

  const BorderRadiusTypeDropdown({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return AppDropDownButton<BorderRadiusType>(
      selectedOption: value,
      onChanged: onChanged,
      items: const [
        DropdownMenuItem<BorderRadiusType>(
          value: BorderRadiusType.all,
          child: Text("All"),
        ),
        DropdownMenuItem<BorderRadiusType>(
          value: BorderRadiusType.circular,
          child: Text("Circular"),
        ),
        DropdownMenuItem<BorderRadiusType>(
          value: BorderRadiusType.vertical,
          child: Text("Vertical"),
        ),
        DropdownMenuItem<BorderRadiusType>(
          value: BorderRadiusType.horizontal,
          child: Text("Horizontal"),
        ),
        DropdownMenuItem<BorderRadiusType>(
          value: BorderRadiusType.only,
          child: Text("Only"),
        ),
        DropdownMenuItem<BorderRadiusType>(
          value: BorderRadiusType.zero,
          child: Text("Zero"),
        ),
      ],
    );
  }
}

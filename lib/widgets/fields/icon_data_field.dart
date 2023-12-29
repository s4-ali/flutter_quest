import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

import '../dropdown_menu.dart';

class IconDataField extends PropertyWidget<IconData> {
  const IconDataField({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return _IconDataField(
      onChanged: onChanged,
      value: value,
    );
  }
}

class _IconDataField extends StatefulWidget {
  final void Function(IconData) onChanged;
  final IconData value;

  const _IconDataField({
    required this.onChanged,
    required this.value,
  });

  @override
  State<_IconDataField> createState() => _IconDataFieldState();
}

class _IconDataFieldState extends State<_IconDataField> {
  final Map<IconData, String> icons = {
    Icons.access_alarm: "Access Alarm",
    Icons.access_time: "Access Time",
    Icons.add_alarm: "Add Alarm",
    Icons.airplanemode_active: "Airplane Mode Active",
    Icons.bluetooth: "Bluetooth",
    Icons.camera: "Camera",
    Icons.directions_bike: "Directions Bike",
    Icons.email: "Email",
    Icons.face: "Face",
    Icons.golf_course: "Gold Course",
    Icons.headset: "Headset",
    Icons.image: "Image",
    Icons.laptop: "Laptop",
    Icons.account_balance_outlined: "Account Balance",
    Icons.pets: "Pets",
    Icons.shopping_cart: "Shopping Card",
    Icons.star: "Star",
    Icons.train: "Train",
    Icons.videocam: "Videocam",
    Icons.watch: "Watch",
    Icons.zoom_in: "Zoom in",
    Icons.wifi: "Wifi",
    Icons.account_balance_sharp: "Account Balance Sharp",
    Icons.add_alert: "Add Alert",
  };

  bool isHovering = false;
  bool openIcons = false;
  IconData selectedIcon = Icons.access_alarm;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: AppDropDownMenu<IconData>(
        selectedOption: selectedIcon,
        leadingIcon: selectedIcon,
        onChanged: (icon) {
          setState(() {
            selectedIcon = icon;
            widget.onChanged(icon);
          });
        },
        items: icons.keys
            .map(
              (e) => DropdownMenuEntry(
                value: e,
                leadingIcon: Icon(e),
                label: icons[e]!,
              ),
            )
            .toList(),
      ),
    );
  }
}

class IconDataPreviewer extends StatelessWidget {
  const IconDataPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<IconData>(
      title: "Icon Data",
      values: const [
        Icons.favorite,
        Icons.circle,
        Icons.arrow_circle_right_sharp
      ],
      propertyBuilder: (onChanged, value) {
        return IconDataField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}

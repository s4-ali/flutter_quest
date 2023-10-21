import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/icon_data_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class SwitchPropertyExplorer extends StatelessWidget {
  const SwitchPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "Switch",
      builder: (provider) {
        final value = provider.booleanField(id: "value", title: "Value");
        final activeColor =
            provider.colorField(id: "activeColor", title: "Active Color");
        final inactiveThumbColor = provider.colorField(
            id: "inactiveThumbColor", title: "Inactive Thumb Color");
        final activeTrackColor = provider.colorField(
            id: "activeTrackColor", title: "Active Track Color");
        final activeThumbImage = provider.stringField(
            id: "activeThumbImage", title: "Active Thumb Image Link");
        final inactiveThumbImage = provider.stringField(
            id: "inactiveThumbImage", title: "InactiveThumb Image Link");
        final thumbColor =
            provider.colorField(id: "thumbColor", title: "Thumb Color");
        final trackColor =
            provider.colorField(id: "trackColor", title: "Track Color");
        final trackOutlineColor = provider.colorField(
            id: "trackOutlineColor", title: "Track Outline Color");
        final trackOutlineWidth = provider.doubleField(
            id: "trackOutlineWidth", title: "Track Outline Width");
        final thumbIcon =
            provider.iconDataField(id: "thumbIcon", title: "ThumbIcon");
        final dragStartBehavior = provider.listField(
            id: "dragStartBehavior",
            title: "Drag Start Behavior",
            values: DragStartBehavior.values);
        final mouseCursor = provider.listField(
            id: "mouseCursor",
            title: "Mouse Cursor",
            values: [MouseCursor.defer, MouseCursor.uncontrolled]);
        final focusColor =
            provider.colorField(id: "focusColor", title: "Focus Color");
        final hoverColor =
            provider.colorField(id: "hoverColor", title: "Hover Color");
        final overlayColor =
            provider.colorField(id: "overlayColor", title: "Overlay Color");
        final splashRadius =
            provider.doubleField(id: "splashRadius", title: "Splash Radius");
        final autofocus =
            provider.booleanField(id: "autofocus", title: "autofocus");
        final materialTapTargetSize = provider.listField(
            id: "MaterialTapTargetSize.values",
            title: "Material Tap Target Size",
            values: MaterialTapTargetSize.values);

        return Switch(
          value: value ?? false,
          onChanged: (val) {},
          activeColor: activeColor,
          activeTrackColor: activeTrackColor,
          inactiveThumbColor: inactiveThumbColor,
          inactiveTrackColor: inactiveThumbColor,
          activeThumbImage: NetworkImage(activeThumbImage ??
              "https://cdn.pixabay.com/photo/2017/11/10/05/24/add-2935429_960_720.png"),
          onActiveThumbImageError: (object, stackTrace) {},
          inactiveThumbImage: NetworkImage(inactiveThumbImage ??
              'https://cdn.pixabay.com/photo/2017/11/10/05/24/add-2935429_960_720.png'),
          onInactiveThumbImageError: (object, stackTrace) {},
          thumbColor: MaterialStatePropertyAll<Color?>(thumbColor),
          trackColor: MaterialStatePropertyAll<Color?>(trackColor),
          trackOutlineColor:
              MaterialStatePropertyAll<Color?>(trackOutlineColor),
          trackOutlineWidth:
              MaterialStatePropertyAll<double?>(trackOutlineWidth),
          thumbIcon: MaterialStatePropertyAll<Icon?>(Icon(thumbIcon)),
          dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
          materialTapTargetSize: materialTapTargetSize,
          mouseCursor: mouseCursor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          overlayColor: MaterialStatePropertyAll<Color?>(overlayColor),
          splashRadius: splashRadius,
          focusNode: FocusNode(),
          onFocusChange: (val) {},
          autofocus: autofocus ?? false,
        );
      },
    );
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/icon_data_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';

typedef SwitchProperties = ({
  ValueHolder<bool?> value,
  ValueHolder<Color?> activeColor,
  ValueHolder<Color?> inactiveThumbColor,
  ValueHolder<Color?> activeTrackColor,
  ValueHolder<String?> activeThumbImage,
  ValueHolder<String?> inactiveThumbImage,
  ValueHolder<Color?> thumbColor,
  ValueHolder<Color?> trackColor,
  ValueHolder<Color?> trackOutlineColor,
  ValueHolder<double?> trackOutlineWidth,
  ValueHolder<IconData?> thumbIcon,
  ValueHolder<DragStartBehavior?> dragStartBehavior,
  ValueHolder<MouseCursor?> mouseCursor,
  ValueHolder<Color?> focusColor,
  ValueHolder<Color?> hoverColor,
  ValueHolder<Color?> overlayColor,
  ValueHolder<double?> splashRadius,
  ValueHolder<bool?> autofocus,
  ValueHolder<MaterialTapTargetSize?> materialTapTargetSize,
});

class SwitchPropertiesNotifier extends PropertiesNotifier<SwitchProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return Switch(
      value: fieldValues.value.isSet? fieldValues.value.value! : false,
      onChanged: (val) {},
      activeColor: fieldValues.activeColor.isSet? fieldValues.activeColor.value : null,
      activeTrackColor: fieldValues.activeTrackColor.isSet? fieldValues.activeTrackColor.value : null,
      inactiveThumbColor: fieldValues.inactiveThumbColor.isSet? fieldValues.inactiveThumbColor.value : null,
      inactiveTrackColor: fieldValues.inactiveThumbColor.isSet? fieldValues.inactiveThumbColor.value : null,
      activeThumbImage: fieldValues.activeThumbImage.isSet
          ? NetworkImage(fieldValues.activeThumbImage.value! )
          : null,
      onActiveThumbImageError: (object, stackTrace) {},
      inactiveThumbImage: fieldValues.inactiveThumbImage.isSet
          ? NetworkImage(fieldValues.inactiveThumbImage.value!)
          : null,
      onInactiveThumbImageError: (object, stackTrace) {},
      thumbColor: MaterialStatePropertyAll<Color?>(fieldValues.thumbColor.isSet? fieldValues.thumbColor.value : null,),
      trackColor: MaterialStatePropertyAll<Color?>(fieldValues.trackColor.isSet? fieldValues.trackColor.value : null,),
      trackOutlineColor:
      MaterialStatePropertyAll<Color?>(fieldValues.trackOutlineColor.isSet? fieldValues.trackColor.value : null,),
      trackOutlineWidth:
      MaterialStatePropertyAll<double?>(fieldValues.trackOutlineWidth.isSet? fieldValues.trackOutlineWidth.value : null,),
      thumbIcon: MaterialStatePropertyAll<Icon?>(
        Icon(fieldValues.thumbIcon.isSet? fieldValues.thumbIcon.value : null,),
      ),
      dragStartBehavior:
      fieldValues.dragStartBehavior.isSet? fieldValues.dragStartBehavior.value! : DragStartBehavior.start,
      materialTapTargetSize: fieldValues.materialTapTargetSize.isSet? fieldValues.materialTapTargetSize.value : null,
      mouseCursor: fieldValues.mouseCursor.isSet? fieldValues.mouseCursor.value : null,
      focusColor: fieldValues.focusColor.isSet? fieldValues.focusColor.value : null,
      hoverColor: fieldValues.hoverColor.isSet? fieldValues.hoverColor.value : null,
      overlayColor: MaterialStatePropertyAll<Color?>(fieldValues.overlayColor.isSet? fieldValues.overlayColor.value : null,),
      splashRadius: fieldValues.splashRadius.isSet? fieldValues.splashRadius.value : null,
      focusNode: FocusNode(),
      onFocusChange: (val) {},
      autofocus: fieldValues.autofocus.isSet? fieldValues.autofocus.value! : false,
    );
  }

  @override
  String get code => '''
   Switch(
      value: ${fieldValues.value},
      onChanged: (val) {},
      activeColor: ${fieldValues.activeColor},
      activeTrackColor: ${fieldValues.activeTrackColor},
      inactiveThumbColor: ${fieldValues.inactiveThumbColor},
      inactiveTrackColor: ${fieldValues.inactiveThumbColor},
      activeThumbImage: ${fieldValues.activeThumbImage},
      onActiveThumbImageError: (object, stackTrace) {},
      inactiveThumbImage: ${fieldValues.inactiveThumbImage},
      onInactiveThumbImageError: (object, stackTrace) {},
      thumbColor: ${fieldValues.thumbColor},
      trackColor: ${fieldValues.trackColor},
      trackOutlineColor: ${fieldValues.trackOutlineColor},
      trackOutlineWidth: ${fieldValues.trackOutlineWidth},
      thumbIcon: ${fieldValues.thumbIcon},
      dragStartBehavior: ${fieldValues.dragStartBehavior},
      materialTapTargetSize: ${fieldValues.materialTapTargetSize},
      mouseCursor: ${fieldValues.mouseCursor},
      focusColor: ${fieldValues.focusColor},
      hoverColor: ${fieldValues.hoverColor},
      overlayColor: ${fieldValues.overlayColor},
      splashRadius: ${fieldValues.splashRadius},
      focusNode: FocusNode(),
      onFocusChange: (val) {},
      autofocus: ${fieldValues.autofocus},
    );
  ''';

  @override
  SwitchProperties get fieldValues => (
        value: getValueOf('value'),
        activeColor: getValueOf('activeColor'),
        inactiveThumbColor: getValueOf('inactiveThumbColor'),
        activeTrackColor: getValueOf('activeTrackColor'),
        activeThumbImage: getValueOf('activeThumbImage'),
        inactiveThumbImage: getValueOf('inactiveThumbImage'),
        thumbColor: getValueOf('thumbColor'),
        trackColor: getValueOf('trackColor'),
        trackOutlineColor: getValueOf('trackOutlineColor'),
        trackOutlineWidth: getValueOf('trackOutlineWidth'),
        thumbIcon: getValueOf('thumbIcon'),
        dragStartBehavior: getValueOf('dragStartBehavior'),
        mouseCursor: getValueOf('mouseCursor'),
        focusColor: getValueOf('focusColor'),
        hoverColor: getValueOf('hoverColor'),
        overlayColor: getValueOf('overlayColor'),
        splashRadius: getValueOf('splashRadius'),
        autofocus: getValueOf('autofocus'),
        materialTapTargetSize: getValueOf('materialTapTargetSize'),
      );

  @override
  void registerFields() {
    booleanField(id: "value", title: "Value");
    colorField(id: "activeColor", title: "Active Color");
    colorField(id: "inactiveThumbColor", title: "Inactive Thumb Color");
    colorField(id: "activeTrackColor", title: "Active Track Color");
    stringField(id: "activeThumbImage", title: "Active Thumb Image Link");
    stringField(id: "inactiveThumbImage", title: "InactiveThumb Image Link");
    colorField(id: "thumbColor", title: "Thumb Color");
    colorField(id: "trackColor", title: "Track Color");
    colorField(id: "trackOutlineColor", title: "Track Outline Color");
    doubleField(id: "trackOutlineWidth", title: "Track Outline Width");
    iconDataField(id: "thumbIcon", title: "ThumbIcon");
    listField<DragStartBehavior>(
      id: "dragStartBehavior",
      title: "Drag Start Behavior",
      values: DragStartBehavior.values,
    );
    listField<MouseCursor>(
      id: "mouseCursor",
      title: "Mouse Cursor",
      values: [MouseCursor.defer, MouseCursor.uncontrolled],
    );
    colorField(id: "focusColor", title: "Focus Color");
    colorField(id: "hoverColor", title: "Hover Color");
    colorField(id: "overlayColor", title: "Overlay Color");
    doubleField(id: "splashRadius", title: "Splash Radius");
    booleanField(id: "autofocus", title: "autofocus");
    listField<MaterialTapTargetSize>(
      id: "materialTapTargetSize",
      title: "Material Tap Target Size",
      values: MaterialTapTargetSize.values,
    );
  }
}

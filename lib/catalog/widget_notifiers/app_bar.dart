import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/icon_data_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/range_picker_number_field.dart';
import 'package:flutter_quest/property_fields/shape_border_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';
import 'package:flutter_quest/property_fields/text_style_field.dart';

typedef AppBarProperties = ({
  ValueHolder<IconData?> leading,
  ValueHolder<bool?> automaticallyImplyLeading,
  ValueHolder<String?> title,
  ValueHolder<IconData?> action,
  ValueHolder<IconData?> flexibleSpace,
  ValueHolder<double?> preferredHeight,
  ValueHolder<IconData?> preferredChild,
  ValueHolder<double?> elevation,
  ValueHolder<double?> scrolledUnderElevation,
  ValueHolder<Color?> shadowColor,
  ValueHolder<Color?> surfaceTintColor,
  ValueHolder<ShapeBorder?> shape,
  ValueHolder<Color?> backgroundColor,
  ValueHolder<Color?> foregroundColor,
  ValueHolder<double?> iconSize,
  ValueHolder<double?> iconFill,
  ValueHolder<double?> iconWeight,
  ValueHolder<double?> iconGrade,
  ValueHolder<double?> iconOpticalSize,
  ValueHolder<Color?> iconColor,
  ValueHolder<double?> iconOpacity,
  ValueHolder<double?> actionsIconSize,
  ValueHolder<double?> actionsIconFill,
  ValueHolder<double?> actionsIconWeight,
  ValueHolder<double?> actionsIconGrade,
  ValueHolder<double?> actionsIconOpticalSize,
  ValueHolder<Color?> actionsIconColor,
  ValueHolder<double?> actionsIconOpacity,
  ValueHolder<bool?> primary,
  ValueHolder<bool?> centerTitle,
  ValueHolder<bool?> excludeHeaderSemantics,
  ValueHolder<double?> titleSpacing,
  ValueHolder<double?> toolbarOpacity,
  ValueHolder<double?> bottomOpacity,
  ValueHolder<double?> toolbarHeight,
  ValueHolder<double?> leadingWidth,
  ValueHolder<TextStyle?> toolbarTextStyle,
  ValueHolder<TextStyle?> titleTextStyle,
  ValueHolder<Color?> systemNavigationBarColor,
  ValueHolder<Color?> systemNavigationBarDividerColor,
  ValueHolder<Brightness?> systemNavigationBarIconBrightness,
  ValueHolder<bool?> systemNavigationBarContrastEnforced,
  ValueHolder<Color?> statusBarColor,
  ValueHolder<Brightness?> statusBarBrightness,
  ValueHolder<Brightness?> statusBarIconBrightness,
  ValueHolder<bool?> systemStatusBarContrastEnforced,
  ValueHolder<bool?> forceMaterialTransparency,
  ValueHolder<Clip?> clipBehavior,
});

class AppBarPropertiesNotifier extends PropertiesNotifier<AppBarProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return AppBar(
      leading: Icon(fieldValues.leading.isSet? fieldValues.leading.value : null),
      automaticallyImplyLeading: fieldValues.automaticallyImplyLeading.isSet? fieldValues.automaticallyImplyLeading.value! : true,
      title: Text(fieldValues.title.isSet? fieldValues.title.value! : " "),
      actions: [Icon(fieldValues.action.isSet? fieldValues.action.value : null)],
      flexibleSpace: Icon(fieldValues.flexibleSpace.isSet? fieldValues.flexibleSpace.value : null),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(fieldValues.preferredHeight.isSet? fieldValues.preferredHeight.value! : 0.0),
        child: Icon(fieldValues.preferredChild.isSet? fieldValues.preferredChild.value : null),
      ),
      elevation: fieldValues.elevation.isSet? fieldValues.elevation.value : null,
      scrolledUnderElevation: fieldValues.scrolledUnderElevation.isSet? fieldValues.scrolledUnderElevation.value : null,
      notificationPredicate: (notification) {
        return false;
      },
      shadowColor: fieldValues.shadowColor.isSet? fieldValues.shadowColor.value : null,
      surfaceTintColor: fieldValues.surfaceTintColor.isSet? fieldValues.surfaceTintColor.value : null,
      shape: fieldValues.shape.isSet? fieldValues.shape.value : null,
      backgroundColor: fieldValues.backgroundColor.isSet? fieldValues.backgroundColor.value : null,
      foregroundColor: fieldValues.foregroundColor.isSet? fieldValues.foregroundColor.value : null,
      iconTheme: IconThemeData(
        size: fieldValues.iconSize.isSet? fieldValues.iconSize.value : null,
        fill: fieldValues.iconFill.isSet? fieldValues.iconFill.value : null,
        weight: fieldValues.iconWeight.isSet? fieldValues.iconWeight.value : null,
        grade: fieldValues.iconGrade.isSet? fieldValues.iconGrade.value : null,
        opticalSize: fieldValues.iconOpticalSize.isSet? fieldValues.iconOpticalSize.value : null,
        color: fieldValues.iconColor.isSet? fieldValues.iconColor.value : null,
        opacity: fieldValues.iconOpacity.isSet? fieldValues.iconOpacity.value : null,
      ),
      actionsIconTheme: IconThemeData(
        size: fieldValues.actionsIconSize.isSet? fieldValues.actionsIconSize.value : null,
        fill: fieldValues.actionsIconFill.isSet? fieldValues.actionsIconFill.value : null,
        weight: fieldValues.actionsIconWeight.isSet? fieldValues.actionsIconWeight.value : null,
        grade: fieldValues.actionsIconGrade.isSet? fieldValues.actionsIconGrade.value : null,
        opticalSize: fieldValues.actionsIconOpticalSize.isSet? fieldValues.actionsIconOpticalSize.value : null,
        color: fieldValues.actionsIconColor.isSet? fieldValues.actionsIconColor.value : null,
        opacity: fieldValues.actionsIconOpacity.isSet? fieldValues.actionsIconOpacity.value : null,
      ),
      primary: fieldValues.primary.isSet? fieldValues.primary.value! : true,
      centerTitle: fieldValues.centerTitle.isSet? fieldValues.centerTitle.value : null,
      excludeHeaderSemantics: fieldValues.excludeHeaderSemantics.isSet? fieldValues.excludeHeaderSemantics.value! : false,
      titleSpacing: fieldValues.titleSpacing.isSet? fieldValues.titleSpacing.value : null,
      toolbarOpacity: fieldValues.toolbarOpacity.isSet? fieldValues.toolbarOpacity.value! : 1.0,
      bottomOpacity: fieldValues.bottomOpacity.isSet? fieldValues.bottomOpacity.value! : 1.0,
      toolbarHeight: fieldValues.toolbarHeight.isSet? fieldValues.toolbarHeight.value : null,
      leadingWidth: fieldValues.leadingWidth.isSet? fieldValues.leadingWidth.value : null,
      toolbarTextStyle: fieldValues.toolbarTextStyle.isSet? fieldValues.toolbarTextStyle.value : null,
      titleTextStyle: fieldValues.titleTextStyle.isSet? fieldValues.titleTextStyle.value : null,
      systemOverlayStyle: SystemUiOverlayStyle(
        systemNavigationBarColor: fieldValues.systemNavigationBarColor.isSet? fieldValues.systemNavigationBarColor.value : null,
        systemNavigationBarDividerColor: fieldValues.systemNavigationBarDividerColor.isSet? fieldValues.systemNavigationBarDividerColor.value : null,
        systemNavigationBarIconBrightness: fieldValues.systemNavigationBarIconBrightness.isSet? fieldValues.systemNavigationBarIconBrightness.value : null,
        systemNavigationBarContrastEnforced: fieldValues.systemNavigationBarContrastEnforced.isSet? fieldValues.systemNavigationBarContrastEnforced.value : null,
        statusBarColor: fieldValues.statusBarColor.isSet? fieldValues.statusBarColor.value : null,
        statusBarBrightness: fieldValues.statusBarBrightness.isSet? fieldValues.statusBarBrightness.value : null,
        statusBarIconBrightness: fieldValues.statusBarIconBrightness.isSet? fieldValues.statusBarIconBrightness.value : null,
        systemStatusBarContrastEnforced: fieldValues.systemStatusBarContrastEnforced.isSet? fieldValues.systemStatusBarContrastEnforced.value : null,
      ),
      forceMaterialTransparency: fieldValues.forceMaterialTransparency.isSet? fieldValues.forceMaterialTransparency.value! : false,
      clipBehavior: fieldValues.clipBehavior.isSet? fieldValues.clipBehavior.value : null,
    );
  }

  @override
  String get code => '''
AppBar(
  leading: Icon(${fieldValues.leading}),
  automaticallyImplyLeading: ${fieldValues.automaticallyImplyLeading} ?? true,
  title: Text("${fieldValues.title}" ?? ""),
  actions: [
    Icon(${fieldValues.action}),
  ],
  flexibleSpace: Icon(${fieldValues.flexibleSpace}),
  bottom: PreferredSize(
    preferredSize: Size.fromHeight(${fieldValues.preferredHeight} ?? 0.0),
    child: Icon(${fieldValues.preferredChild}),
  ),
  elevation: ${fieldValues.elevation},
  scrolledUnderElevation: ${fieldValues.scrolledUnderElevation},
  notificationPredicate: (notification) {
    return false;
  },
  shadowColor: ${fieldValues.shadowColor},
  surfaceTintColor: ${fieldValues.surfaceTintColor},
  shape: ${fieldValues.shape},
  backgroundColor: ${fieldValues.backgroundColor},
  foregroundColor: ${fieldValues.foregroundColor},
  iconTheme: IconThemeData(
    size: ${fieldValues.iconSize},
    fill: ${fieldValues.iconFill},
    weight: ${fieldValues.iconWeight},
    grade: ${fieldValues.iconGrade},
    opticalSize: ${fieldValues.iconOpticalSize},
    color: ${fieldValues.iconColor},
    opacity: ${fieldValues.iconOpacity},
  ),
  actionsIconTheme: IconThemeData(
    size: ${fieldValues.actionsIconSize},
    fill: ${fieldValues.actionsIconFill},
    weight: ${fieldValues.actionsIconWeight},
    grade: ${fieldValues.actionsIconGrade},
    opticalSize: ${fieldValues.actionsIconOpticalSize},
    color: ${fieldValues.actionsIconColor},
    opacity: ${fieldValues.actionsIconOpacity},
  ),
  primary: ${fieldValues.primary} ?? true,
  centerTitle: ${fieldValues.centerTitle},
  excludeHeaderSemantics: ${fieldValues.excludeHeaderSemantics} ?? false,
  titleSpacing: ${fieldValues.titleSpacing},
  toolbarOpacity: ${fieldValues.toolbarOpacity} ?? 0.0,
  bottomOpacity: ${fieldValues.bottomOpacity} ?? 0.0,
  toolbarHeight: ${fieldValues.toolbarHeight},
  leadingWidth: ${fieldValues.leadingWidth},
  toolbarTextStyle: ${fieldValues.toolbarTextStyle},
  titleTextStyle: ${fieldValues.titleTextStyle},
  systemOverlayStyle: SystemUiOverlayStyle(
    systemNavigationBarColor: ${fieldValues.systemNavigationBarColor},
    systemNavigationBarDividerColor: ${fieldValues.systemNavigationBarDividerColor},
    systemNavigationBarIconBrightness: ${fieldValues.systemNavigationBarIconBrightness},
    systemNavigationBarContrastEnforced: ${fieldValues.systemNavigationBarContrastEnforced},
    statusBarColor: ${fieldValues.statusBarColor},
    statusBarBrightness: ${fieldValues.statusBarBrightness},
    statusBarIconBrightness: ${fieldValues.statusBarIconBrightness},
    systemStatusBarContrastEnforced: ${fieldValues.systemStatusBarContrastEnforced},
  ),
  forceMaterialTransparency: ${fieldValues.forceMaterialTransparency} ?? false,
  clipBehavior: ${fieldValues.clipBehavior},
)
''';

  @override
  AppBarProperties get fieldValues => (
        leading: getValueOf('leading'),
        automaticallyImplyLeading: getValueOf('automaticallyImplyLeading'),
        title: getValueOf('title'),
        action: getValueOf('action'),
        flexibleSpace: getValueOf('flexibleSpace'),
        preferredHeight: getValueOf('preferredHeight'),
        preferredChild: getValueOf('preferredChild'),
        elevation: getValueOf('elevation'),
        scrolledUnderElevation: getValueOf('scrolledUnderElevation'),
        shadowColor: getValueOf('shadowColor'),
        surfaceTintColor: getValueOf('surfaceTintColor'),
        shape: getValueOf('shape'),
        backgroundColor: getValueOf('backgroundColor'),
        foregroundColor: getValueOf('foregroundColor'),
        iconSize: getValueOf('iconSize'),
        iconFill: getValueOf('iconFill'),
        iconWeight: getValueOf('iconWeight'),
        iconGrade: getValueOf('iconGrade'),
        iconOpticalSize: getValueOf('iconOpticalSize'),
        iconColor: getValueOf('iconColor'),
        iconOpacity: getValueOf('iconOpacity'),
        actionsIconSize: getValueOf('actionsIconSize'),
        actionsIconFill: getValueOf('actionsIconFill'),
        actionsIconWeight: getValueOf('actionsIconWeight'),
        actionsIconGrade: getValueOf('actionsIconGrade'),
        actionsIconOpticalSize: getValueOf('actionsIconOpticalSize'),
        actionsIconColor: getValueOf('actionsIconColor'),
        actionsIconOpacity: getValueOf('actionsIconOpacity'),
        primary: getValueOf('primary'),
        centerTitle: getValueOf('centerTitle'),
        excludeHeaderSemantics: getValueOf('excludeHeaderSemantics'),
        titleSpacing: getValueOf('titleSpacing'),
        toolbarOpacity: getValueOf('toolbarOpacity'),
        bottomOpacity: getValueOf('bottomOpacity'),
        toolbarHeight: getValueOf('toolbarHeight'),
        leadingWidth: getValueOf('leadingWidth'),
        toolbarTextStyle: getValueOf('toolbarTextStyle'),
        titleTextStyle: getValueOf('titleTextStyle'),
        systemNavigationBarColor: getValueOf('systemNavigationBarColor'),
        systemNavigationBarDividerColor:
            getValueOf('systemNavigationBarDividerColor'),
        systemNavigationBarIconBrightness:
            getValueOf('systemNavigationBarIconBrightness'),
        systemNavigationBarContrastEnforced:
            getValueOf('systemNavigationBarContrastEnforced'),
        statusBarColor: getValueOf('statusBarColor'),
        statusBarBrightness: getValueOf('statusBarBrightness'),
        statusBarIconBrightness: getValueOf('statusBarIconBrightness'),
        systemStatusBarContrastEnforced:
            getValueOf('systemStatusBarContrastEnforced'),
        forceMaterialTransparency: getValueOf('forceMaterialTransparency'),
        clipBehavior: getValueOf('clipBehavior'),
      );

  @override
  void registerFields() {
    iconDataField(id: "leading", title: "Leading Widget");
    booleanField(
        id: "automaticallyImplyLeading", title: "Automatically Imply Leading");
    stringField(id: "title", title: "Title Widget");
    iconDataField(id: "action", title: "Action Widget");
    iconDataField(id: "flexibleSpace", title: "flexibleSpace");
    doubleField(id: "preferredHeight", title: "Bottom Preferred Height");
    iconDataField(id: "preferredChild", title: "Preferred Child");
    doubleField(id: "elevation", title: "Elevation");
    doubleField(
        id: "scrolledUnderElevation", title: "Scrolled Under Elevation");
    colorField(id: "shadowColor", title: "Shadow Color");
    colorField(id: "surfaceTintColor", title: "Surface Tint Color");
    shapeBorderField(id: "shape", title: "Shape");
    colorField(id: "backgroundColor", title: "Background Color");
    colorField(id: "foregroundColor", title: "Foreground Color");
    doubleField(id: "iconSize", title: "IconTheme Size");
    doubleField(id: "iconFill", title: "IconTheme Fill");
    doubleField(id: "iconWeight", title: "IconTheme Weight");
    doubleField(id: "iconGrade", title: "IconTheme Grade");
    doubleField(id: "iconOpticalSize", title: "IconTheme Optical Size");
    colorField(id: "iconColor", title: "IconTheme Color");
    rangePickerNumberField(id: "iconOpacity", title: "IconTheme Opacity");
    doubleField(id: "actionsIconSize", title: "ActionsIconTheme Size");
    doubleField(id: "actionsIconFill", title: "ActionsIconTheme Fill");
    doubleField(id: "actionsIconWeight", title: "ActionsIconTheme Weight");
    doubleField(id: "actionsIconGrade", title: "ActionsIconTheme Grade");
    doubleField(
        id: "actionsIconOpticalSize", title: "ActionsIconTheme Optical Size");
    colorField(id: "actionsIconColor", title: "ActionsIconTheme Color");
    rangePickerNumberField(
        id: "actionsIconOpacity", title: "ActionsIconTheme Opacity");
    booleanField(id: "primary", title: "Primary");
    booleanField(id: "centerTitle", title: "Center Title");
    booleanField(
        id: "excludeHeaderSemantics", title: "Exclude Header Semantics");
    doubleField(id: "titleSpacing", title: "Title Spacing");
    rangePickerNumberField(id: "toolbarOpacity", title: "Toolbar Opacity");
    rangePickerNumberField(id: "bottomOpacity", title: "Bottom Opacity");
    doubleField(id: "toolbarHeight", title: "Toolbar Height");
    doubleField(id: "leadingWidth", title: "Leading Width");
    textStyleField(id: "toolbarTextStyle", title: "Toolbar Text Style");
    textStyleField(id: "titleTextStyle", title: "Title Text Style");
    colorField(
        id: "systemNavigationBarColor", title: " System Navigation Bar Color");
    colorField(
        id: "systemNavigationBarDividerColor",
        title: "System Navigation Bar Divider Color");
    listField<Brightness>(
        id: "systemNavigationBarIconBrightness",
        title: "System NavigationBar Icon Brightness",
        values: Brightness.values);
    booleanField(
        id: "systemNavigationBarContrastEnforced",
        title: "System NavigationBar Contrast Enforced");
    colorField(id: "statusBarColor", title: "Status Bar Color");
    listField<Brightness>(
        id: "statusBarBrightness",
        title: "Status Bar Brightness",
        values: Brightness.values);
    listField<Brightness>(
        id: "statusBarIconBrightness",
        title: "Status Bar Icon Brightness",
        values: Brightness.values);
    booleanField(
        id: "systemStatusBarContrastEnforced",
        title: "System Status Bar Contrast Enforced");
    booleanField(
        id: "forceMaterialTransparency", title: "Force Material Transparency");
    clipField(id: "clipBehavior", title: "Clip Behavior");
  }
}

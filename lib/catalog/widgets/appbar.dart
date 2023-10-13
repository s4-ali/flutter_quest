import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/icon_data_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/range_picker_number_field.dart';
import 'package:flutter_quest/property_fields/shape_border_field.dart';
import 'package:flutter_quest/property_fields/string_field_field.dart';
import 'package:flutter_quest/property_fields/text_style_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class AppBarPropertyExplorer extends StatelessWidget {
  const AppBarPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "AppBar",
      builder: (provider) {
        final leading =
        provider.iconDataField(id: "leading", title: "Leading Widget");
        final automaticallyImplyLeading = provider.booleanField(
            id: "automaticallyImplyLeading",
            title: "Automatically Imply Leading");
        final title =
        provider.stringField(id: "title", title: "Title Widget");
        final action =
        provider.iconDataField(id: "action", title: "Action Widget");
        final flexibleSpace =
        provider.iconDataField(id: "flexibleSpace", title: "flexibleSpace");
        final preferredHeight = provider.doubleField(
            id: "preferredHeight", title: "Bottom Preferred Height");
        final preferredChild = provider.iconDataField(
            id: "preferredChild", title: "Preferred Child");
        final elevation = provider.doubleField(
            id: "elevation", title: "Elevation");
        final scrolledUnderElevation = provider.doubleField(
            id: "scrolledUnderElevation", title: "Scrolled Under Elevation");
        final shadowColor = provider.colorField(
            id: "shadowColor", title: "Shadow Color");
        final surfaceTintColor = provider.colorField(
            id: "surfaceTintColor", title: "Surface Tint Color");
        final shape = provider.shapeBorderField(id: "shape", title: "Shape");
        final backgroundColor = provider.colorField(
            id: "backgroundColor", title: "Background Color");
        final foregroundColor = provider.colorField(
            id: "foregroundColor", title: "Foreground Color");

        final iconSize = provider.doubleField(
            id: "iconSize", title: "IconTheme Size");
        final iconFill = provider.doubleField(
            id: "iconFill", title: "IconTheme Fill");
        final iconWeight = provider.doubleField(
            id: "iconWeight", title: "IconTheme Weight");
        final iconGrade = provider.doubleField(
            id: "iconGrade", title: "IconTheme Grade");
        final iconOpticalSize = provider.doubleField(
            id: "iconOpticalSize", title: "IconTheme Optical Size");
        final iconColor = provider.colorField(
            id: "iconColor", title: "IconTheme Color");
        final iconOpacity = provider.doubleRangePickerField(
            id: "iconOpacity", title: "IconTheme Opacity");

        final actionsIconSize = provider.doubleField(
            id: "actionsIconSize", title: "ActionsIconTheme Size");
        final actionsIconFill = provider.doubleField(
            id: "actionsIconFill", title: "ActionsIconTheme Fill");
        final actionsIconWeight = provider.doubleField(
            id: "actionsIconWeight", title: "ActionsIconTheme Weight");
        final actionsIconGrade = provider.doubleField(
            id: "actionsIconGrade", title: "ActionsIconTheme Grade");
        final actionsIconOpticalSize = provider.doubleField(
            id: "actionsIconOpticalSize",
            title: "ActionsIconTheme Optical Size");
        final actionsIconColor = provider.colorField(
            id: "actionsIconColor", title: "ActionsIconTheme Color");
        final actionsIconOpacity = provider.doubleRangePickerField(
            id: "actionsIconOpacity", title: "ActionsIconTheme Opacity");

        final primary = provider.booleanField(id: "primary", title: "Primary");
        final centerTitle = provider.booleanField(
            id: "centerTitle", title: "Center Title");
        final excludeHeaderSemantics = provider.booleanField(
            id: " excludeHeaderSemantics", title: " Exclude Header Semantics");
        final titleSpacing = provider.doubleField(
            id: "titleSpacing", title: "Title Spacing");
        final toolbarOpacity = provider.doubleRangePickerField(
            id: "toolbarOpacity", title: "Toolbar Opacity");
        final bottomOpacity = provider.doubleRangePickerField(
            id: "bottomOpacity", title: "Bottom Opacity");
        final toolbarHeight = provider.doubleField(
            id: "toolbarHeight", title: "Toolbar Height");
        final leadingWidth = provider.doubleField(
            id: "leadingWidth", title: "Leading Width");
        final toolbarTextStyle = provider.textStyleField(
            id: "toolbarTextStyle", title: "Toolbar Text Style");
        final titleTextStyle = provider.textStyleField(
            id: "titleTextStyle", title: "Title Text Style");

        final systemNavigationBarColor = provider.colorField(
            id: " systemNavigationBarColor",
            title: " System Navigation Bar Color");
        final systemNavigationBarDividerColor = provider.colorField(
            id: "systemNavigationBarDividerColor",
            title: "System Navigation Bar Divider Color");
        final systemNavigationBarIconBrightness = provider.listField<
            Brightness>(
            id: "systemNavigationBarIconBrightness",
            title: "System NavigationBar Icon Brightness",
            values: Brightness.values);
        final systemNavigationBarContrastEnforced = provider.booleanField(
            id: "systemNavigationBarContrastEnforced",
            title: "System NavigationBar Contrast Enforced");
        final statusBarColor = provider.colorField(
            id: "statusBarColor",
            title: "Status Bar Color");
        final statusBarBrightness = provider.listField<Brightness>(
            id: "statusBarBrightness",
            title: "Status Bar Brightness",
            values: Brightness.values);
        final statusBarIconBrightness = provider.listField<Brightness>(
            id: "statusBarIconBrightness",
            title: "Status Bar Icon Brightness",
            values: Brightness.values);
        final systemStatusBarContrastEnforced = provider.booleanField(
            id: "systemStatusBarContrastEnforced",
            title: "System Status Bar Contrast Enforced");

        final forceMaterialTransparency = provider.booleanField(
            id: "forceMaterialTransparency",
            title: "Force Material Transparency");
        final clipBehavior = provider.clipField(
            id: "clipBehavior", title: "Clip Behavior");


        return AppBar(
          leading: Icon(leading),
          automaticallyImplyLeading: automaticallyImplyLeading ?? true,
          title: Text(title ?? ""),
          actions: [
            Icon(action),
          ],
          flexibleSpace: Icon(flexibleSpace),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(preferredHeight ?? 0.0),
            child: Icon(preferredChild),
          ),
          elevation: elevation,
          scrolledUnderElevation: scrolledUnderElevation,
          notificationPredicate: (notification) {
            return false;
          },
          shadowColor: shadowColor,
          surfaceTintColor: surfaceTintColor,
          shape: shape,
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          iconTheme: IconThemeData(
            size: iconSize,
            fill: iconFill,
            weight: iconWeight,
            grade: iconGrade,
            opticalSize: iconOpticalSize,
            color: iconColor,
            opacity: iconOpacity,
          ),
          actionsIconTheme: IconThemeData(
            size: actionsIconSize,
            fill: actionsIconFill,
            weight: actionsIconWeight,
            grade: actionsIconGrade,
            opticalSize: actionsIconOpticalSize,
            color: actionsIconColor,
            opacity: actionsIconOpacity,
          ),
          primary: primary ?? true,
          centerTitle: centerTitle,
          excludeHeaderSemantics: excludeHeaderSemantics ?? false,
          titleSpacing: titleSpacing,
          toolbarOpacity: toolbarOpacity ?? 0.0,
          bottomOpacity: bottomOpacity ?? 0.0,
          toolbarHeight: toolbarHeight,
          leadingWidth: leadingWidth,
          toolbarTextStyle: toolbarTextStyle,
          titleTextStyle: titleTextStyle,
          systemOverlayStyle: SystemUiOverlayStyle(
            systemNavigationBarColor: systemNavigationBarColor,
            systemNavigationBarDividerColor: systemNavigationBarDividerColor,
            systemNavigationBarIconBrightness: systemNavigationBarIconBrightness,
            systemNavigationBarContrastEnforced: systemNavigationBarContrastEnforced,
            statusBarColor: statusBarColor,
            statusBarBrightness: statusBarBrightness,
            statusBarIconBrightness: statusBarIconBrightness,
            systemStatusBarContrastEnforced: systemStatusBarContrastEnforced,
          ),
          forceMaterialTransparency: forceMaterialTransparency ?? false,
          clipBehavior: clipBehavior,
        );
      },
    );
  }
}

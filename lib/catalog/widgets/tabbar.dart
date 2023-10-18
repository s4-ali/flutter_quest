import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/border_radius_field.dart';
import 'package:flutter_quest/property_fields/box_border_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/edge_insets_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/text_style_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class TabBarPropertyExplorer extends StatelessWidget {
  const TabBarPropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
      widgetName: "TabBar",
      builder: (provider) {
        final isScrollable =
            provider.booleanField(id: "isScrollable", title: "isScrollable");
        final padding =
            provider.edgeInsetsField(id: "padding", title: "Padding");
        final indicatorColor =
            provider.colorField(id: "indicatorColor", title: "Indicator Color");
        final automaticIndicatorColorAdjustment = provider.booleanField(
            id: "automaticIndicatorColorAdjustment",
            title: "Automatic Indicator Color Adjustment");
        final indicatorWeight = provider.doubleField(
            id: "indicatorWeight", title: "Indicator Weight");
        final indicatorPadding = provider.edgeInsetsField(
            id: "indicatorPadding", title: "Indicator Padding");

        final color = provider.colorField(id: "color", title: "Color");
        final border = provider.borderField(id: "border", title: "Border");
        final borderRadius = provider.borderRadiusField(
            id: "borderRadius", title: "Border Radius");
        final backgroundBlendMode = provider.listField(
            id: "backgroundBlendMode",
            title: "Background BlendMode",
            values: BlendMode.values);
        final shape = provider.listField(
            id: "shape", title: "Shape", values: BoxShape.values);

        final indicatorSize = provider.listField(
            id: "indicatorSize",
            title: "Indicator Size",
            values: TabBarIndicatorSize.values);
        final dividerColor =
            provider.colorField(id: "dividerColor", title: "Divider Color");
        final labelColor =
            provider.colorField(id: "labelColor", title: "Label Color");
        final labelStyle =
            provider.textStyleField(id: "labelStyle", title: "Label Style");
        final labelPadding = provider.edgeInsetsField(
            id: "labelPadding", title: "Label Padding");
        final unselectedLabelColor = provider.colorField(
            id: "unselectedLabelColor", title: "Unselected Label Color");
        final unselectedLabelStyle = provider.textStyleField(
            id: "unselectedLabelStyle", title: "Unselected Label Style");
        final dragStartBehavior = provider.listField(
            id: "dragStartBehavior",
            title: "DragStartBehavior",
            values: DragStartBehavior.values);
        final overlayColor =
            provider.colorField(id: "overlayColor", title: "Overlay Color");
        final mouseCursor = provider.listField(
            id: "mouseCursor",
            title: "Mouse Cursor",
            values: [MouseCursor.defer, MouseCursor.uncontrolled]);
        final enableFeedback = provider.booleanField(
            id: "enableFeedback", title: "Enable Feedback");
        final splashBorderRadius = provider.borderRadiusField(
            id: "splashBorderRadius", title: "Splash Border Radius");
        final tabAlignment = provider.listField(
            id: "tabAlignment",
            title: "TabAlignment",
            values: TabAlignment.values);

        return TabBar(
          tabs: [],
          isScrollable: isScrollable ?? false,
          padding: padding,
          indicatorColor: indicatorColor,
          automaticIndicatorColorAdjustment:
              automaticIndicatorColorAdjustment ?? true,
          indicatorWeight: indicatorWeight ?? 2.0,
          indicatorPadding: indicatorPadding ?? EdgeInsets.zero,
          indicator: BoxDecoration(
            color: color,
            border: border,
            borderRadius: borderRadius,
            backgroundBlendMode: backgroundBlendMode,
            shape: shape ?? BoxShape.rectangle,
            boxShadow: const [],
          ),
          indicatorSize: indicatorSize,
          dividerColor: dividerColor,
          labelColor: labelColor,
          labelStyle: labelStyle,
          labelPadding: labelPadding,
          unselectedLabelColor: unselectedLabelColor,
          unselectedLabelStyle: unselectedLabelStyle,
          dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
          overlayColor: MaterialStatePropertyAll(overlayColor),
          mouseCursor: mouseCursor,
          enableFeedback: enableFeedback,
          onTap: (v) {},
          physics: const ScrollPhysics(),
          splashFactory: NoSplash.splashFactory,
          splashBorderRadius: splashBorderRadius,
          tabAlignment: tabAlignment,
        );
      },
    );
  }
}

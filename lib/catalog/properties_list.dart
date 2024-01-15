import 'package:flutter/material.dart';
import 'package:flutter_quest/utils/extensions.dart';
import 'package:flutter_quest/widgets/app_bar.dart';
import 'package:flutter_quest/widgets/fields/alignment_field.dart';
import 'package:flutter_quest/widgets/fields/axis_field.dart';
import 'package:flutter_quest/widgets/fields/boolean_field.dart';
import 'package:flutter_quest/widgets/fields/border_radius/border_radius_field.dart';
import 'package:flutter_quest/widgets/fields/box_border_field.dart';
import 'package:flutter_quest/widgets/fields/box_fit_field.dart';
import 'package:flutter_quest/widgets/fields/clip_field.dart';
import 'package:flutter_quest/widgets/fields/color_field.dart';
import 'package:flutter_quest/widgets/fields/cross_axis_alignemnt_field.dart';
import 'package:flutter_quest/widgets/fields/curve_field.dart';
import 'package:flutter_quest/widgets/fields/icon_data_field.dart';
import 'package:flutter_quest/widgets/fields/list_field.dart';
import 'package:flutter_quest/widgets/fields/main_axis_alignment_field.dart';
import 'package:flutter_quest/widgets/fields/main_axis_size_field.dart';
import 'package:flutter_quest/widgets/fields/matrix4_field.dart';
import 'package:flutter_quest/widgets/fields/number_field.dart';
import 'package:flutter_quest/widgets/fields/range_picker_number_field.dart';
import 'package:flutter_quest/widgets/fields/shape_border_field.dart';
import 'package:flutter_quest/widgets/fields/string_field.dart';
import 'package:flutter_quest/widgets/fields/text_direction_field.dart';
import 'package:flutter_quest/widgets/fields/text_style_field.dart';
import 'package:flutter_quest/widgets/fields/vertical_direction_field.dart';
import 'package:flutter_quest/widgets/theme_colors.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PropertiesList extends StatelessWidget {
  const PropertiesList({super.key});

  @override
  Widget build(BuildContext context) {
    const items = [
      AlignmentPreviewer(),
      AxisPreviewer(),
      BooleanPreviewer(),
      BorderRadiusPreviewer(),
      BoxBorderPreviewer(),
      BoxFitPreviewer(),
      ClipPreviewer(),
      ColorPreviewer(),
      CrossAxisAlignmentPreviewer(),
      CurvePreviewer(),
      IconDataPreviewer(),
      ListPreviewer(),
      MainAxisAlignmentPreviewer(),
      MainAxisSizePreviewer(),
      Matrix4Previewer(),
      NumberFieldPreviewer(),
      NumberRangePreviewer(),
      ShapeBorderPreviewer(),
      StringFieldPreviewer(),
      TextDirectionPreviewer(),
      TextStylePreviewer(),
      VerticalDirectionPreviewer(),
    ];

    final rows =
        ((MediaQuery.of(context).size.width - 32) / (350 + 16)).floor();

    final deviceType = context.deviceScreenType;

    final content = Center(
      child: SizedBox(
        width: ((350 + 16) * rows).toDouble(),
        child: MasonryGridView.count(
          crossAxisCount: rows == 0 ? 1 : rows,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return items[index];
          },
        ),
      ),
    );
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Properties List",
      ),
      body: deviceType.isMobile
          ? Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  margin: const EdgeInsets.only(top: 8),
                  decoration: ShapeDecoration(
                    color: context.colorScheme.tertiaryContainer,
                    shape: const StadiumBorder(),
                  ),
                  child: const ThemeColors(),
                ),
                Expanded(child: content),
              ],
            )
          : content,
    );
  }
}

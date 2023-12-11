import 'package:flutter/material.dart';
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

class PropertiesList extends StatelessWidget {
  const PropertiesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blueAccent,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: SingleChildScrollView(
            child: Wrap(
              spacing: 12.0,
              runSpacing: 12.0,
              children: [
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
              ],
            ),
          ),
        ));
  }
}

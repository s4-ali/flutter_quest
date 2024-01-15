import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/alignment_field.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/box_fit_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';

typedef ImageProperties = ({
  double? height,
  double? width,
  String? image,
  String? semanticLabel,
  bool? excludeFromSemantics,
  Color? color,
  double? opacity,
  BlendMode? colorBlendMode,
  BoxFit? boxFit,
  Alignment? alignment,
  ImageRepeat? repeat,
  Rect? centerSlice,
  bool? matchTextDirection,
  bool? gaplessPlayback,
  bool? isAntiAlias,
  FilterQuality? filterQuality,
});

class ImagePropertiesNotifier extends PropertiesNotifier {
  @override
  Widget buildPreview(BuildContext context) {
    return Image(
      height: fieldValues.height,
      width: fieldValues.width,
      image: NetworkImage(fieldValues.image ??
          "https://www.globalapptesting.com/hs-fs/hubfs/Marketing/blog/Q2/mobile-app-testing-386658-edited.jpg?width=864&name=mobile-app-testing-386658-edited.jpg"),
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        return const SizedBox();
      },
      loadingBuilder: (context, child, loadingProgress) {
        return const SizedBox();
      },
      errorBuilder: (context, error, stackTrace) {
        return const SizedBox();
      },
      semanticLabel: fieldValues.semanticLabel,
      excludeFromSemantics: fieldValues.excludeFromSemantics ?? false,
      color: fieldValues.color,
      opacity: AlwaysStoppedAnimation(fieldValues.opacity ?? 1.0),
      colorBlendMode: fieldValues.colorBlendMode,
      fit: fieldValues.boxFit,
      alignment: fieldValues.alignment ?? Alignment.center,
      repeat: fieldValues.repeat ?? ImageRepeat.noRepeat,
      centerSlice: fieldValues.centerSlice,
      matchTextDirection: fieldValues.matchTextDirection ?? false,
      gaplessPlayback: fieldValues.gaplessPlayback ?? false,
      isAntiAlias: fieldValues.isAntiAlias ?? false,
      filterQuality: fieldValues.filterQuality ?? FilterQuality.low,
    );
  }

  @override
  String get code => '''
Image(
  height: ${fieldValues.height},
  width: ${fieldValues.width},
  image: NetworkImage(${fieldValues.image} ?? "https://www.globalapptesting.com/hs-fs/hubfs/Marketing/blog/Q2/mobile-app-testing-386658-edited.jpg?width=864&name=mobile-app-testing-386658-edited.jpg"),
  frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
    return const SizedBox();
  },
  loadingBuilder: (context, child, loadingProgress) {
    return const SizedBox();
  },
  errorBuilder: (context, error, stackTrace) {
    return const SizedBox();
  },
  semanticLabel: ${fieldValues.semanticLabel},
  excludeFromSemantics: ${fieldValues.excludeFromSemantics} ?? false,
  color: ${fieldValues.color},
  opacity: AlwaysStoppedAnimation(${fieldValues.opacity} ?? 1.0),
  colorBlendMode: ${fieldValues.colorBlendMode},
  fit: ${fieldValues.boxFit},
  alignment: ${fieldValues.alignment} ?? Alignment.center,
  repeat: ${fieldValues.repeat} ?? ImageRepeat.noRepeat,
  centerSlice: ${fieldValues.centerSlice},
  matchTextDirection: ${fieldValues.matchTextDirection} ?? false,
  gaplessPlayback: ${fieldValues.gaplessPlayback} ?? false,
  isAntiAlias: ${fieldValues.isAntiAlias} ?? false,
  filterQuality: ${fieldValues.filterQuality} ?? FilterQuality.low,
)
''';

  @override
  get fieldValues => (
        height: getValueOf('height'),
        width: getValueOf('width'),
        image: getValueOf('image'),
        semanticLabel: getValueOf('semanticLabel'),
        excludeFromSemantics: getValueOf('excludeFromSemantics'),
        color: getValueOf('color'),
        opacity: getValueOf('opacity'),
        colorBlendMode: getValueOf('colorBlendMode'),
        boxFit: getValueOf('boxFit'),
        alignment: getValueOf('alignment'),
        repeat: getValueOf('repeat'),
        centerSlice: getValueOf('centerSlice'),
        matchTextDirection: getValueOf('matchTextDirection'),
        gaplessPlayback: getValueOf('gaplessPlayback'),
        isAntiAlias: getValueOf('isAntiAlias'),
        filterQuality: getValueOf('filterQuality'),
      );

  @override
  void registerFields() {
    heightField();
    widthField();
    stringField(id: "image", title: "Image Link");
    stringField(id: "semanticLabel", title: "semanticLabel");
    booleanField(id: "excludeFromSemantics", title: "excludeFromSemantics");
    colorField(id: "color", title: "color");
    doubleField(id: "opacity", title: "Opacity");
    listField(
        id: "colorBlendMode",
        title: "colorBlendMode",
        values: BlendMode.values);
    boxFitField(id: "boxFit", title: "Box Fit");
    alignmentField(id: "Alignment", title: "Alignment");
    listField(id: "repeat", title: "Repeat", values: ImageRepeat.values);
    listField(
        id: "centerSlice",
        title: "Center Slice",
        values: [Rect.zero, Rect.largest]);
    booleanField(id: "matchTextDirection", title: "Match Text Direction");
    booleanField(id: "gaplessPlayback", title: "Gapless Playback");
    booleanField(id: "isAntiAlias", title: "isAntiAlias");
    listField(
        id: "filterQuality",
        title: "filterQuality",
        values: FilterQuality.values);
  }
}

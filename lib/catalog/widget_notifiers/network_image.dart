import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/alignment_field.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';

typedef NetworkImageProperties = ({
  double? height,
  double? width,
  double? scale,
  String? image,
  String? semanticLabel,
  bool? excludeFromSemantics,
  Color? color,
  double? opacity,
  BlendMode? colorBlendMode,
  BoxFit? fit,
  Alignment? alignment,
  ImageRepeat? repeat,
  Rect? centerSlice,
  bool? matchTextDirection,
  bool? gaplessPlayback,
  bool? isAntiAlias,
  FilterQuality? filterQuality,
  int? cacheWidth,
  int? cacheHeight,
});

class NetworkImagePropertiesNotifier
    extends PropertiesNotifier<NetworkImageProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return Image.network(
      fieldValues.image ??
          "https://usabilitygeek.com/wp-content/uploads/2018/06/mobile-usability-testing-lead.jpg",
      height: fieldValues.height,
      width: fieldValues.width,
      scale: fieldValues.scale ?? 1.0,
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
      fit: fieldValues.fit,
      alignment: fieldValues.alignment ?? Alignment.center,
      repeat: fieldValues.repeat ?? ImageRepeat.noRepeat,
      centerSlice: fieldValues.centerSlice,
      matchTextDirection: fieldValues.matchTextDirection ?? false,
      gaplessPlayback: fieldValues.gaplessPlayback ?? false,
      isAntiAlias: fieldValues.isAntiAlias ?? false,
      filterQuality: fieldValues.filterQuality ?? FilterQuality.low,
      cacheWidth: fieldValues.cacheWidth,
      cacheHeight: fieldValues.cacheHeight,
      headers: const <String, String>{},
    );
  }

  @override
  String get code => '''
Image.network(
  "${fieldValues.image ?? "https://usabilitygeek.com/wp-content/uploads/2018/06/mobile-usability-testing-lead.jpg"}",
  height: ${fieldValues.height},
  width: ${fieldValues.width},
  scale: ${fieldValues.scale ?? 1.0},
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
  excludeFromSemantics: ${fieldValues.excludeFromSemantics ?? false},
  color: ${fieldValues.color},
  opacity: AlwaysStoppedAnimation(${fieldValues.opacity ?? 1.0}),
  colorBlendMode: ${fieldValues.colorBlendMode},
  fit: ${fieldValues.fit},
  alignment: ${fieldValues.alignment ?? Alignment.center},
  repeat: ${fieldValues.repeat ?? ImageRepeat.noRepeat},
  centerSlice: ${fieldValues.centerSlice},
  matchTextDirection: ${fieldValues.matchTextDirection ?? false},
  gaplessPlayback: ${fieldValues.gaplessPlayback ?? false},
  isAntiAlias: ${fieldValues.isAntiAlias ?? false},
  filterQuality: ${fieldValues.filterQuality ?? FilterQuality.low},
  cacheWidth: ${fieldValues.cacheWidth},
  cacheHeight: ${fieldValues.cacheHeight},
  headers: const <String, String>{},
)
''';

  @override
  NetworkImageProperties get fieldValues => (
        height: getValueOf('height'),
        width: getValueOf('width'),
        scale: getValueOf('scale'),
        image: getValueOf('image'),
        semanticLabel: getValueOf('semanticLabel'),
        excludeFromSemantics: getValueOf('excludeFromSemantics'),
        color: getValueOf('color'),
        opacity: getValueOf('opacity'),
        colorBlendMode: getValueOf('colorBlendMode'),
        fit: getValueOf('fit'),
        alignment: getValueOf('alignment'),
        repeat: getValueOf('repeat'),
        centerSlice: getValueOf('centerSlice'),
        matchTextDirection: getValueOf('matchTextDirection'),
        gaplessPlayback: getValueOf('gaplessPlayback'),
        isAntiAlias: getValueOf('isAntiAlias'),
        filterQuality: getValueOf('filterQuality'),
        cacheWidth: getValueOf('cacheWidth'),
        cacheHeight: getValueOf('cacheHeight'),
      );

  @override
  void registerFields() {
    heightField();
    widthField();
    doubleField(id: "scale", title: "scale");
    stringField(id: "image", title: "Image Link");
    stringField(id: "semanticLabel", title: "semanticLabel");
    booleanField(id: "excludeFromSemantics", title: "excludeFromSemantics");
    colorField(id: "color", title: "color");
    doubleField(id: "opacity", title: "Opacity");
    listField(
        id: "colorBlendMode",
        title: "colorBlendMode",
        values: BlendMode.values);
    listField(id: "fit", title: "Fit", values: BoxFit.values);
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
    intField(id: "cacheWidth", title: "Cache Width");
    intField(id: "cacheHeight", title: "Cache Height");
  }
}

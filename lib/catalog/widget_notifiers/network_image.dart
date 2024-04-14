import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/alignment_field.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';

typedef NetworkImageProperties = ({
  ValueHolder<double?> height,
  ValueHolder<double?> width,
  ValueHolder<double?> scale,
  ValueHolder<String?> image,
  ValueHolder<String?> semanticLabel,
  ValueHolder<bool?> excludeFromSemantics,
  ValueHolder<Color?> color,
  ValueHolder<double?> opacity,
  ValueHolder<BlendMode?> colorBlendMode,
  ValueHolder<BoxFit?> fit,
  ValueHolder<Alignment?> alignment,
  ValueHolder<ImageRepeat?> repeat,
  ValueHolder<Rect?> centerSlice,
  ValueHolder<bool?> matchTextDirection,
  ValueHolder<bool?> gaplessPlayback,
  ValueHolder<bool?> isAntiAlias,
  ValueHolder<FilterQuality?> filterQuality,
  ValueHolder<int?> cacheWidth,
  ValueHolder<int?> cacheHeight,
});

class NetworkImagePropertiesNotifier
    extends PropertiesNotifier<NetworkImageProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return Image.network(
      fieldValues.image.isSet? fieldValues.image.value! :
      "https://usabilitygeek.com/wp-content/uploads/2018/06/mobile-usability-testing-lead.jpg",
      height: fieldValues.height.isSet? fieldValues.height.value : null,
      width: fieldValues.width.isSet? fieldValues.width.value : null,
      scale: fieldValues.scale.isSet? fieldValues.scale.value! : 1.0,
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        return const SizedBox();
      },
      loadingBuilder: (context, child, loadingProgress) {
        return const SizedBox();
      },
      errorBuilder: (context, error, stackTrace) {
        return const SizedBox();
      },
      semanticLabel: fieldValues.semanticLabel.isSet? fieldValues.semanticLabel.value : null,
      excludeFromSemantics: fieldValues.excludeFromSemantics.isSet? fieldValues.excludeFromSemantics.value! : false,
      color: fieldValues.color.isSet? fieldValues.color.value : null,
      opacity: AlwaysStoppedAnimation(fieldValues.opacity.isSet? fieldValues.opacity.value! : 1.0),
      colorBlendMode: fieldValues.colorBlendMode.isSet? fieldValues.colorBlendMode.value : null,
      fit: fieldValues.fit.isSet? fieldValues.fit.value : null,
      alignment: fieldValues.alignment.isSet? fieldValues.alignment.value! : Alignment.center,
      repeat: fieldValues.repeat.isSet? fieldValues.repeat.value! : ImageRepeat.noRepeat,
      centerSlice: fieldValues.centerSlice.isSet? fieldValues.centerSlice.value : null,
      matchTextDirection: fieldValues.matchTextDirection.isSet? fieldValues.matchTextDirection.value! : false,
      gaplessPlayback: fieldValues.gaplessPlayback.isSet? fieldValues.gaplessPlayback.value! : false,
      isAntiAlias: fieldValues.isAntiAlias.isSet? fieldValues.isAntiAlias.value! : false,
      filterQuality: fieldValues.filterQuality.isSet? fieldValues.filterQuality.value! : FilterQuality.low,
      cacheWidth: fieldValues.cacheWidth.isSet? fieldValues.cacheWidth.value : null,
      cacheHeight: fieldValues.cacheHeight.isSet? fieldValues.cacheHeight.value : null,
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

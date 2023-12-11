import 'package:flutter/material.dart';
import 'package:flutter_quest/property_fields/alignment_field.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/box_fit_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';
import 'package:flutter_quest/widgets/core/propery_builder.dart';

class ImagePropertyExplorer extends StatelessWidget {
  const ImagePropertyExplorer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PropertyExplorerBuilder(
        widgetName: "Image",
        builder: (provider) {
          final height = provider.heightField();
          final width = provider.widthField();
          final image = provider.stringField(id: "image", title: "Image Link");
          final semanticLabel = provider.stringField(
              id: "semanticLabel", title: "semanticLabel");
          final excludeFromSemantics = provider.booleanField(
              id: "excludeFromSemantics", title: "excludeFromSemantics");
          final color = provider.colorField(id: "color", title: "color");
          final opacity = provider.doubleField(id: "opacity", title: "Opacity");
          final colorBlendMode = provider.listField(id: "colorBlendMode", title: "colorBlendMode", values: BlendMode.values);
          final boxFit = provider.boxFitField(id: "boxFit", title: "Box Fit");
          final alignment = provider.alignmentField(
              id: "Alignment", title: "Alignment");
          final repeat = provider.listField(
              id: "repeat", title: "Repeat", values: ImageRepeat.values);
          final centerSlice = provider.listField(id: "centerSlice",
              title: "Center Slice",
              values: [Rect.zero, Rect.largest]);
          final matchTextDirection = provider.booleanField(
              id: "matchTextDirection", title: "Match Text Direction");
          final gaplessPlayback = provider.booleanField(
              id: "gaplessPlayback", title: "Gapless Playback");
          final isAntiAlias = provider.booleanField(
              id: "isAntiAlias", title: "isAntiAlias");
          final filterQuality = provider.listField(id: "filterQuality",
              title: "filterQuality",
              values: FilterQuality.values);

          return Image(
            height: height,
            width: width,
            image: NetworkImage(
                image?? "https://www.globalapptesting.com/hs-fs/hubfs/Marketing/blog/Q2/mobile-app-testing-386658-edited.jpg?width=864&name=mobile-app-testing-386658-edited.jpg"
            ),
            frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
              return const SizedBox();
            },
            loadingBuilder: (context, child, loadingProgress) {
              return const SizedBox();
            },
            errorBuilder: (context, error, stackTrace) {
              return const SizedBox();
            },
            semanticLabel: semanticLabel,
            excludeFromSemantics: excludeFromSemantics ?? false,
            color: color,
            opacity: AlwaysStoppedAnimation(opacity?? 1.0),
            colorBlendMode: colorBlendMode,
            fit: boxFit,
            alignment: alignment ?? Alignment.center,
            repeat: repeat ?? ImageRepeat.noRepeat,
            centerSlice: centerSlice,
            matchTextDirection: matchTextDirection ?? false,
            gaplessPlayback: gaplessPlayback ?? false,
            isAntiAlias: isAntiAlias ?? false,
            filterQuality: filterQuality ?? FilterQuality.low,
          );
        });
  }
}

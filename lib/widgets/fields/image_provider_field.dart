import 'package:flutter/material.dart';

class ImageProviderField extends StatelessWidget {
  final void Function(ImageProvider) onChanged;
  final ImageProvider value;

  const ImageProviderField({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      fallbackHeight: 60,
    );
  }
}

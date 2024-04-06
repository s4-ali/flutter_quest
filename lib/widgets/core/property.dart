import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';

abstract class PropertyWidget<T> extends StatelessWidget {
  final void Function(ValueHolder<T>) onChanged;
  final T value;

  const PropertyWidget({
    super.key,
    required this.onChanged,
    required this.value,
  });
}

abstract class PropertyStatefulWidget<T> extends StatefulWidget {
  final void Function(ValueHolder<T>) onChanged;
  final T value;

  const PropertyStatefulWidget({
    super.key,
    required this.onChanged,
    required this.value,
  });
}

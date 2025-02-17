import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_quest/utils/extensions.dart';
import 'package:vector_math/vector_math_64.dart' show Vector3;

class CursorDelegate {
  static final ValueNotifier<Offset> cursorPos =
      ValueNotifier<Offset>(Offset.zero);
}

class CursorTracker extends StatelessWidget {
  const CursorTracker({super.key, this.child});

  final Widget? child;

  void _onCursorUpdate(PointerEvent event, BuildContext context) {
    if (event.position != Offset.zero) {
      CursorDelegate.cursorPos.value = event.position;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (child != null) child!,
        Positioned.fill(
          child: Listener(
            behavior: HitTestBehavior.translucent,
            onPointerMove: (e) => _onCursorUpdate(e, context),
            onPointerHover: (e) => _onCursorUpdate(e, context),
          ),
        ),
      ],
    );
  }
}

class ReactiveSquare extends StatefulWidget {
  const ReactiveSquare({
    super.key,
    this.inverted = false,
    this.radius = 0,
    this.smallest = 0.1,
    this.largest = 1,
    this.floor = false,
    this.color,
  });

  final double smallest;
  final double largest;
  final double radius;
  final bool inverted;
  final bool floor;
  final Color? color;

  @override
  State<ReactiveSquare> createState() => _ReactiveSquareState();
}

class _ReactiveSquareState extends State<ReactiveSquare>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    // Context will not be available during build... we will refresh right after the build has occured.
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {});
    });
  }

  double _calculateDistance(Offset cursorPos) {
    // No need to calculate
    if (cursorPos == Offset.zero) {
      return (widget.inverted) ? widget.smallest : 1;
    }

    // Current square renderbox
    final square = context.findRenderObject() as RenderBox?;
    if (square == null) {
      return (widget.inverted) ? widget.smallest : 1;
    }

    // Find the center of the current square
    final centerPos =
        square.localToGlobal(square.size.bottomCenter(Offset.zero));

    // Find the distance from the center
    final distance = (centerPos - cursorPos).distance;

    // Find the circle around
    final threshold = square.size.longestSide + widget.radius;

    // Scaling math
    if (widget.floor) {
      return min(
        1,
        (distance / threshold).floorToDouble(),
      );
    } else if (widget.inverted) {
      return max(
        widget.smallest,
        (threshold / distance).clamp(widget.smallest, 1),
      );
    } else {
      return min(
        1,
        (distance / threshold).clamp(widget.smallest, 1),
      );
    }
  }

  Matrix4 _calculateRotation(Offset cursorPos) {
    // if (cursorPos == Offset.zero) {
    return Matrix4.identity();
    // }

    // // Current square renderbox
    // final square = context.findRenderObject() as RenderBox?;
    // if (square == null) {
    //   return Matrix4.identity();
    // }
    //
    // // Find the center of the current square
    // final centerPos = square.localToGlobal(square.size
    //     .bottomCenter(Offset.zero)
    //     .translate(0, -square.size.height / 2));
    //
    // // Find the distance from the center
    // final distance = (centerPos - cursorPos).distance.abs();
    //
    // final distancePos = (cursorPos - centerPos );
    // // Scaling math
    // Matrix4 current = Matrix4.identity();
    // current.setRotationX((distancePos.dy.abs() + widget.radius) / square.size.height / pi);
    // current.setRotationY((distancePos.dx.abs() + widget.radius) / square.size.height / pi);
    // current.setRotationZ( distance / square.size.height / pi);
    // // current.
    // // current.rotate(
    // //   Vector3(
    // //     -(distancePos.dy / square.size.width),
    // //     (distancePos.dx / square.size.height),
    // //     0,
    // //   ),
    // //   min(2* pi, distance / square.size.height),
    // // );
    // return current;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Offset>(
      valueListenable: CursorDelegate.cursorPos,
      builder: (context, value, child) {
        return Transform(
          transform: _calculateRotation(value),
          child: Transform.scale(
            scale: _calculateDistance(value),
            child: child,
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: widget.color ?? Colors.white,
          boxShadow: [
            BoxShadow(
              color: widget.color ?? Colors.white,
              blurRadius: 8,
            ),
          ],
        ),
      ),
    );
  }
}

class ReactiveGridPage extends StatefulWidget {
  const ReactiveGridPage({super.key, required this.title});

  final String title;

  @override
  State<ReactiveGridPage> createState() => _ReactiveGridPageState();
}

class _ReactiveGridPageState extends State<ReactiveGridPage> {
  final PageController controller = PageController();

  Widget _buildGridView(BuildContext context,
      {required IndexedWidgetBuilder itemBuilder}) {
    final size = MediaQuery.of(context).size;
    const itemSize = 75;
    final itemCount = (size.width/itemSize).ceil()*(size.height/itemSize).ceil();
    final crossAxisCount = (size.width/itemSize).ceil();
    print("size: $size | itemCount: $itemCount | crossAxisCount: $crossAxisCount");
    return SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: GridView.builder(
        clipBehavior: Clip.none,
        shrinkWrap: true,
        itemCount: itemCount.round(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
        ),
        itemBuilder: itemBuilder,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CursorTracker(
      child: Scaffold(
        body: Stack(
          children: [
            // Content
            PageView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              controller: controller,
              children: [
                _buildGridView(
                  context,
                  itemBuilder: (context, index) {
                    return Center(
                      child: ReactiveSquare(
                        radius: 50,
                        smallest: 0.2,
                        inverted: true,
                        color: context.colorScheme.primary,
                        largest: 1,
                      ),
                    );
                  },
                ),
              ],
            ),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
                child:  Container(
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200.withOpacity(0.5)
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InvertColors extends StatelessWidget {
  final Widget child;

  const InvertColors({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: const ColorFilter.matrix(
        [
          -1, //RED
          0,
          0,
          0,
          255, //GREEN
          0,
          -1,
          0,
          0,
          255, //BLUE
          0,
          0,
          -1,
          0,
          255, //ALPHA
          0,
          0,
          0,
          1,
          0,
        ],
      ),
      child: child,
    );
  }
}

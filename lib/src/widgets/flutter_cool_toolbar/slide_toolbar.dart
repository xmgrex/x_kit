import 'package:flutter/material.dart';

import '../../../x_kit.dart';

class SlideToolbar extends StatefulWidget {
  const SlideToolbar(
      {Key? key, required this.toolbarItems, this.toolbarRadius, this.body})
      : super(key: key);

  final List<ToolbarItemData> toolbarItems;
  final double? toolbarRadius;
  final Widget? body;

  @override
  State<SlideToolbar> createState() => _SlideToolbarState();
}

class _SlideToolbarState extends State<SlideToolbar> {
  double position = -100;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        logger.info(details.globalPosition.dx);
        if (details.delta.direction == 0 &&
            details.globalPosition.dx > 3 &&
            details.globalPosition.dx < 80) {
          setState(() {
            position = 4;
          });
        } else if (details.delta.direction.floor() == 3 &&
            details.globalPosition.dx > 3 &&
            details.globalPosition.dx < 80) {
          setState(() {
            position = -100;
          });
        }
      },
      child: Stack(
        children: [
          widget.body ?? const SizedBox(),
          AnimatedPositioned(
            left: position,
            width: MediaQuery.of(context).size.width,
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
            child: CoolToolbar(
              toolbarItems: widget.toolbarItems,
              radius: widget.toolbarRadius ?? 12,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:loading_overlay/loading_overlay.dart' as loading_overlay;

import '../../x_kit.dart';


class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay(
      {required this.child,
      required this.isLoading,
      this.bgColor,
      this.text,
      Key? key})
      : super(key: key);

  final Widget child;
  final bool isLoading;
  final Color? bgColor;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return loading_overlay.LoadingOverlay(
      isLoading: isLoading,
      color: bgColor ?? SystemColors.grey800,
      progressIndicator: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: LoadingAnimationWidget.discreteCircle(
              color: Theme.of(context).primaryColor,
              secondRingColor: Colors.orangeAccent,
              thirdRingColor: Colors.red,
              size: 42,
            ),
          )),
      child: child,
    );
  }
}

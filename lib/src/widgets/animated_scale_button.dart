import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';

const loadingSpinner = SizedBox(
  width: 24,
  height: 24,
  child: CircularProgressIndicator(
    strokeWidth: 3.0,
  ),
);

class AnimatedScaleButton extends ScaleTap {
  AnimatedScaleButton({
    required Widget child,
    dynamic Function()? onPressed,
    bool enableFeedback = true,
    bool isScale = true,
    double? scaleMinValue,
    Duration scaleDuration = const Duration(milliseconds: 300),
    Curve? scaleCurve,
    double height = 48,
    double width = double.infinity,
    Duration animationDuration = const Duration(milliseconds: 200),
    Curve animationCurve = Curves.easeOutExpo,
    Color color = Colors.indigoAccent,
    double radius = 4,
    TextStyle? style,
    IconData? icon,
    double iconSize = 24,
    Color? iconColor,
    bool isLoading = false,
    Widget loadingWidget = loadingSpinner,
    Border? border,
    bool filled = true,
  }) : super(
          enableFeedback: enableFeedback,
          scaleMinValue: isScale ? scaleMinValue : 1,
          duration: scaleDuration,
          onPressed: onPressed,
          scaleCurve: scaleCurve,
          child: AnimatedContainer(
            alignment: Alignment.bottomCenter,
            curve: animationCurve,
            height: height,
            width: width,
            duration: animationDuration,
            decoration: BoxDecoration(
              color: filled ? color : Colors.transparent,
              borderRadius: BorderRadius.circular(radius),
              border: border,
            ),
            child: Center(
              child: isLoading
                  ? loadingWidget
                  : icon == null
                      ? child
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              icon,
                              size: iconSize,
                              color:
                                  height == 0 ? Colors.transparent : iconColor,
                            ),
                            const SizedBox(width: 4),
                            child,
                          ],
                        ),
            ),
          ),
        );
}

import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';

class ScaleButtonWithIcon extends StatelessWidget {
  const ScaleButtonWithIcon({
    Key? key,
    required this.icon,
    this.height,
    this.width,
    this.radius,
    this.iconSize,
    this.label,
    this.textStyle,
    this.onPressed,
    this.iconColor,
    this.buttonColor,
    this.enableFeedback,
  }) : super(key: key);

  final IconData icon;
  final double? height;
  final double? width;
  final double? radius;
  final double? iconSize;
  final String? label;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;
  final Color? iconColor;
  final Color? buttonColor;
  final bool? enableFeedback;

  @override
  Widget build(BuildContext context) {
    return ScaleTap(
      enableFeedback: enableFeedback ?? true,
      duration: const Duration(milliseconds: 300),
      onPressed: onPressed,
      child: AnimatedContainer(
        height: height ?? 44,
        width: width ?? 142,
        curve: Curves.easeOutCirc,
        duration: const Duration(milliseconds: 400),
        foregroundDecoration: const BoxDecoration(color: Colors.transparent),
        decoration: BoxDecoration(
            color: buttonColor ?? Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(radius ?? 60)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: iconSize ?? 20,
              color: height == 0 ? Colors.transparent : iconColor,
            ),
            const SizedBox(width: 6),
            Text(label!, style: textStyle),
          ],
        ),
      ),
    );
  }
}

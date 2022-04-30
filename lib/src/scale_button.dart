import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';

class ScaleButton extends StatelessWidget {
  const ScaleButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.height,
    this.width,
    this.radius,
    this.style,
    this.color,
  }) : super(key: key);
  final String label;
  final VoidCallback onPressed;
  final TextStyle? style;
  final double? width;
  final double? height;
  final double? radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ScaleTap(
      enableFeedback: false,
      duration: const Duration(milliseconds: 300),
      onPressed: onPressed,
      child: AnimatedContainer(
        alignment: Alignment.bottomCenter,
        curve: Curves.easeOutExpo,
        height: height ?? 56,
        width: width ?? double.infinity,
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
            color: color ?? Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(radius ?? 6)),
        child: Center(
          child: Text(label, style: style),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
class CircleIconButton extends StatelessWidget {
  const CircleIconButton(
      {super.key,
      required this.icon,
      this.iconSize,
      this.borderColor,
      this.backgroundColor, this.onPressed});

  final IconData icon;
  final double? iconSize;
  final Color? borderColor;
  final Color? backgroundColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        backgroundColor: backgroundColor,
        side: BorderSide(
          color: borderColor ?? Theme.of(context).dividerColor.withOpacity(.5),
        ),
      ),
      onPressed: onPressed,
      icon: Icon(icon, size: iconSize),
    );
  }
}

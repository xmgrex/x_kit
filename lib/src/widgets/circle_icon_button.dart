import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  const CircleIconButton(
      {super.key,
      required this.icon,
      this.iconSize,
      this.borderColor,
      this.backgroundColor});

  final IconData icon;
  final double? iconSize;
  final Color? borderColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        backgroundColor: backgroundColor,
        side: BorderSide(
          color: borderColor ?? Theme.of(context).dividerColor.withOpacity(.5),
        ),
      ),
      onPressed: () => Navigator.pop(context),
      icon: Icon(icon, size: iconSize),
    );
  }
}

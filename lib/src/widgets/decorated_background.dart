import 'package:flutter/material.dart';

class DecoratedBackground extends StatelessWidget {
  const DecoratedBackground({
    required this.imagePath,
    required this.colors,
    this.opacity,
    Key? key,
  }) : super(key: key);

  final String imagePath;
  final double? opacity;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      position: DecorationPosition.foreground,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: colors,
        ),
      ),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}

import 'package:flutter/material.dart';

final lowShadow = [
    BoxShadow(
      color: Colors.black.withOpacity(.15),
      offset: const Offset(0, 3),
      blurRadius: 6,
    )
  ];
final midShadow = [
    BoxShadow(
      color: Colors.black.withOpacity(.30),
      offset: const Offset(0, 6),
      blurRadius: 12,
    )
  ];
final highShadow = [
    BoxShadow(
      color: Colors.black.withOpacity(.45),
      offset: const Offset(0, 9),
      blurRadius: 18,
    )
  ];

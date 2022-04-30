import 'dart:io';

import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

void showPlatformModalBottomSheet({
  required Widget widget,
  required BuildContext context,
  Color? barrierColor,
}) {
  if (Platform.isIOS) {
    showCupertinoModalBottomSheet<void>(
      expand: true,
      animationCurve: Curves.easeOutCirc,
      barrierColor: barrierColor ?? Colors.black.withOpacity(.8),
      previousRouteAnimationCurve: Curves.easeOutCirc,
      context: context,
      duration: const Duration(milliseconds: 300),
      builder: (context) => widget,
    );
  } else {
    showMaterialModalBottomSheet<void>(
      animationCurve: Curves.easeOutCirc,
      duration: const Duration(milliseconds: 300),
      context: context,
      builder: (context) => widget,
    );
  }
}

void showHalfModalBottomSheet({
  required Widget widget,
  required BuildContext context,
  double? height,
  Color? barrierColor,
  Color? contentColor,
}) {
  showModalBottomSheet<void>(
    context: context,
    builder: (context) => Container(
        height: height ?? 300,
        decoration: BoxDecoration(
          color: contentColor ?? Colors.grey[200],
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(12),
          ),
        ),
        child: widget),
    backgroundColor: barrierColor ?? Colors.black.withOpacity(.8),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(12),
      ),
    ),
  );
}

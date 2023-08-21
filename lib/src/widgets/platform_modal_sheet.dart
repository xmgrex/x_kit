import 'dart:io';

import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

Future<void> showPlatformModalBottomSheet({
  required BuildContext context,
  required Widget Function(BuildContext) builder,
  Color? backgroundColor,
  Color? barrierColor,
  Duration duration = const Duration(milliseconds: 300),
  Curve animationCurve = Curves.easeOutCirc,
  Curve previousRouteAnimationCurve = Curves.easeOutCirc,
  bool expand = false,
  bool enableDrag = true,
}) async {
  if (Platform.isIOS) {
    await showCupertinoModalBottomSheet<void>(
      expand: expand,
      enableDrag: enableDrag,
      animationCurve: animationCurve,
      backgroundColor: backgroundColor,
      barrierColor: barrierColor ?? Colors.black.withOpacity(.8),
      previousRouteAnimationCurve: previousRouteAnimationCurve,
      context: context,
      duration: duration,
      builder: builder,
    );
  } else {
    await showMaterialModalBottomSheet<void>(
      expand: expand,
      enableDrag: enableDrag,
      animationCurve: animationCurve,
      duration: duration,
      backgroundColor: backgroundColor,
      barrierColor: barrierColor ?? Colors.black.withOpacity(.8),
      context: context,
      builder: builder,
    );
  }
}

Future<void> showHalfModalBottomSheet({
  required BuildContext context,
  required Widget widget,
  double? height,
  Color? barrierColor,
  Color? contentColor,
}) async {
  await showModalBottomSheet<void>(
    context: context,
    builder: (context) => Container(
        height: height ?? 300,
        decoration: BoxDecoration(
          color: contentColor ?? Colors.grey[200],
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(12.0),
          ),
        ),
        child: widget),
    backgroundColor: barrierColor ?? Colors.black.withOpacity(.8),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(12.0),
      ),
    ),
  );
}

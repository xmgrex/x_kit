import 'package:flutter/material.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
    BuildContext context, Widget? content) {
  return ScaffoldMessenger.of(context).showSnackBar(
    content is SnackBar ? content : SnackBar(content: content!),
  );
}
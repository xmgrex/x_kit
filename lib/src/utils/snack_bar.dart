import 'package:flutter/material.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
    BuildContext context, Widget content) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: content,
  ));
}


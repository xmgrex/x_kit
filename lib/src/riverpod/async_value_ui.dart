import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

extension AsyncValueUI on AsyncValue {
  void showAlertDialogOnError(BuildContext context, String? title) {
    if (!isRefreshing && hasError) {
      showOkAlertDialog(
        context: context,
        title: title ?? 'Error',
        message: error.toString(),
      );
    }
  }
}
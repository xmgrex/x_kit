import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart' as loading_overlay;

class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay(
      {required this.child,
      this.loadingWidget,
      required this.isLoading,
      this.backgroundColor,
      this.text,
      Key? key})
      : super(key: key);

  final Widget child;
  final Widget? loadingWidget;
  final bool isLoading;
  final Color? backgroundColor;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return loading_overlay.LoadingOverlay(
      isLoading: isLoading,
      color: backgroundColor ?? Colors.black.withOpacity(.5),
      progressIndicator: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: 
          Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          loadingWidget ?? const _LoadingWidget(),
          Text(text ?? '処理中'),
        ],
      ),
        ),
      ),
      child: child,
    );
  }
}

class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget();

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? const CupertinoActivityIndicator()
        : const CircularProgressIndicator();
  }
}

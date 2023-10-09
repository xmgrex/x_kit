import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart' as loading_overlay;

class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay({
    super.key,
    required this.isLoading,
    required this.child,
    this.loadingWidget,
    this.text,
    this.textStyle,
    this.backgroundColor = Colors.black,
    this.opacity = 0.5,
  });

  final Widget child;
  final Widget? loadingWidget;
  final bool isLoading;
  final Color backgroundColor;
  final String? text;
  final TextStyle? textStyle;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return loading_overlay.LoadingOverlay(
      isLoading: isLoading,
      color: backgroundColor,
      opacity: opacity,
      progressIndicator: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              loadingWidget ?? const _LoadingWidget(),
              Material(
                color: Colors.transparent,
                child: Text(text ?? '処理中', style: textStyle),
              ),
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

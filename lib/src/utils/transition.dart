import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum TransitionEffect {
  fade,
  scale,
  rightToLeft,
  leftToRight,
  topToBottom,
  bottomToTop,
}

extension TransitionEffectExtension on TransitionEffect {
  static Offset _value(TransitionEffect val) {
    switch (val) {
      case TransitionEffect.rightToLeft:
        return const Offset(1, 0);
      case TransitionEffect.leftToRight:
        return const Offset(-1, 0);
      case TransitionEffect.topToBottom:
        return const Offset(0, -1);
      case TransitionEffect.bottomToTop:
        return const Offset(0, 1);
      case TransitionEffect.fade:
        return Offset.zero;
      case TransitionEffect.scale:
        return Offset.zero;
    }
  }

  Offset get value => _value(this);
}

class Transition {
  Transition({
    required this.child,
    this.curve,
    required this.transitionEffect,
    this.settings,
    this.duration,
  });

  final TransitionEffect transitionEffect;

  final RouteSettings? settings;

  /// The widget below this widget in the tree
  final Widget child;

  /// An parametric animation easing curve, i.e. a
  /// mapping of the unit interval to the unit interval.
  ///
  /// Default to [Curves.ease]
  final Curve? curve;

  final Duration? duration;

  /// Called to obtain the child widget.
  Route<dynamic> builder() {
    Route<dynamic> _route;
    transitionEffect == TransitionEffect.rightToLeft && Platform.isIOS
        ? _route = CupertinoPageRoute<dynamic>(builder: (context) {
            return child;
          })
        : _route = PageRouteBuilder<Route<dynamic>>(
            settings: settings,
            transitionDuration: duration ??
                const Duration(
                  milliseconds: 400,
                ),
            reverseTransitionDuration: duration ??
                const Duration(
                  milliseconds: 400,
                ),
            pageBuilder: (BuildContext context, animation, _) => child,
            transitionsBuilder: (
              BuildContext context,
              animation,
              secondaryAnimation,
              child,
            ) {
              final tween =
                  Tween(begin: transitionEffect.value, end: Offset.zero)
                      .chain(CurveTween(curve: curve ?? Curves.easeOutQuint));
              switch (transitionEffect) {
                case TransitionEffect.fade:
                  return FadeTransition(opacity: animation, child: child);
                case TransitionEffect.scale:
                  return ScaleTransition(
                      alignment: Alignment.bottomRight,
                      scale: animation,
                      child: child);
                case TransitionEffect.rightToLeft:
                  return SlideTransition(
                    transformHitTests: false,
                    position: animation.drive(tween),
                    child: child,
                  );
                case TransitionEffect.leftToRight:
                  return SlideTransition(
                    transformHitTests: false,
                    position: animation.drive(tween),
                    child: child,
                  );
                case TransitionEffect.topToBottom:
                  return SlideTransition(
                    transformHitTests: false,
                    position: animation.drive(tween),
                    child: child,
                  );
                case TransitionEffect.bottomToTop:
                  return SlideTransition(
                    transformHitTests: false,
                    position: animation.drive(tween),
                    child: child,
                  );
              }
            },
          );
    return _route;
  }
}

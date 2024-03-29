part of widgets;

class CoolToolbarConstants {
  static const double itemsGutter = 10;
  static const double toolbarHeight = 540;
  static const double toolbarWidth = 70;
  static const double itemsOffset = toolbarWidth - 10;
  static const int itemsInView = 7;
  static const double toolbarVerticalPadding = 10;
  static const double toolbarHorizontalPadding = 10;

  static const Duration longPressAnimationDuration =
      Duration(milliseconds: 400);
  static const Duration animatedContainerDuration = Duration(milliseconds: 400);
  static const Duration scrollScaleAnimationDuration =
      Duration(milliseconds: 700);

  static const Curve longPressAnimationCurve = Curves.easeOutCirc;
  static const Curve scrollScaleAnimationCurve = Curves.ease;
}

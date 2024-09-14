part of styles;
class CupertinoTextStyles {
  CupertinoTextStyles._();

  static _toStyle(double fontSize, double height, FontWeight fontWeight,
      double letterSpacing,
      {Color? color, TextDecoration? decoration}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      /// textBaseline: TextBaseline,
      /// baseline 設定がうまくいかず height 指定すると下寄りの文字になってしまうので、適用を保留
      height: height / fontSize,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      decoration: decoration,
    );
  }

  ///* * regular: _toStyle(36, 41, FontWeight.w400, 0.37),
  ///* * bold: _toStyle(36, 41, FontWeight.w700, 0.37),
  static final largeTitle = _CupertinoMyTextStyleSet(
    regular: _toStyle(34, 41, FontWeight.w400, 0.37),
    bold: _toStyle(34, 41, FontWeight.w700, 0.37),
  );

  static final title1 = _CupertinoMyTextStyleSet(
    regular: _toStyle(28, 34, FontWeight.w400, 0.36),
    bold: _toStyle(28, 34, FontWeight.w700, 0.36),
  );
  ///* * regular: _toStyle(22, 28, FontWeight.w400, 0.35),
  ///* * bold: _toStyle(22, 28, FontWeight.w700, 0.35),
  static final title2 = _CupertinoMyTextStyleSet(
    regular: _toStyle(22, 28, FontWeight.w400, 0.35),
    bold: _toStyle(22, 28, FontWeight.w700, 0.35),
  );

  ///* * regular: _toStyle(20, 25, FontWeight.w400, 0.38),
  ///* * bold: _toStyle(20, 25, FontWeight.w600, 0.38),
  static final title3 = _CupertinoMyTextStyleSet(
    regular: _toStyle(20, 25, FontWeight.w400, 0.38),
    bold: _toStyle(20, 25, FontWeight.w600, 0.38),
  );

  ///* * regular: _toStyle(17, 22, FontWeight.w400, -0.41),
  ///* * bold: _toStyle(17, 22, FontWeight.w600, -0.41),
  static final headline = _CupertinoMyTextStyleSet(
    regular: _toStyle(17, 22, FontWeight.w400, -0.41),
    bold: _toStyle(17, 22, FontWeight.w600, -0.41),
  );

  ///* * regular: _toStyle(17, 22, FontWeight.w400, -0.41),
  ///* * bold: _toStyle(17, 22, FontWeight.w600, -0.41),
  static final body = _CupertinoMyTextStyleSet(
    regular: _toStyle(17, 22, FontWeight.w400, -0.41),
    bold: _toStyle(17, 22, FontWeight.w600, -0.41),
  );

  ///* * regular: _toStyle(16, 21, FontWeight.w400, -0.32),
  ///* * bold: _toStyle(16, 21, FontWeight.w600, -0.32),
  static final callOut = _CupertinoMyTextStyleSet(
    regular: _toStyle(16, 21, FontWeight.w400, -0.32),
    bold: _toStyle(16, 21, FontWeight.w600, -0.32),
  );

  ///* * regular: _toStyle(15, 20, FontWeight.w400, -0.24),
  ///* * bold: _toStyle(15, 20, FontWeight.w600, -0.24),
  static final subHeadline = _CupertinoMyTextStyleSet(
    regular: _toStyle(15, 20, FontWeight.w400, -0.24),
    bold: _toStyle(15, 20, FontWeight.w600, -0.24),
  );

  ///* * regular: _toStyle(13, 18, FontWeight.w400, -0.08),
  ///* * bold: _toStyle(12, 18, FontWeight.w600, -0.08),
  static final footnote = _CupertinoMyTextStyleSet(
    regular: _toStyle(13, 18, FontWeight.w400, -0.08),
    bold: _toStyle(12, 18, FontWeight.w600, -0.08),
  );

  ///* * regular: _toStyle(12, 16, FontWeight.w400, 0),
  ///* * bold: _toStyle(12, 16, FontWeight.w500, 0),
  static final caption1 = _CupertinoMyTextStyleSet(
    regular: _toStyle(12, 16, FontWeight.w400, 0),
    bold: _toStyle(12, 16, FontWeight.w500, 0),
  );

  ///* * regular: _toStyle(11, 13, FontWeight.w400, 0.07),
  ///* * bold: _toStyle(11, 13, FontWeight.w600, 0.07),
  static final caption2 = _CupertinoMyTextStyleSet(
    regular: _toStyle(11, 13, FontWeight.w400, 0.07),
    bold: _toStyle(11, 13, FontWeight.w600, 0.07),
  );

}

/// Wrapper for [TextStyle] that provides additional predefined text styles.
class _CupertinoMyTextStyle extends TextStyle {
  _CupertinoMyTextStyle(TextStyle style)
    : super(
      color: style.color,
      backgroundColor: style.backgroundColor,
      fontSize: style.fontSize,
      fontWeight: style.fontWeight,
      fontStyle: style.fontStyle,
      letterSpacing: style.letterSpacing,
      wordSpacing: style.wordSpacing,
      textBaseline: style.textBaseline,
      height: style.height,
      leadingDistribution: style.leadingDistribution,
      locale: style.locale,
      foreground: style.foreground,
      background: style.background,
      shadows: style.shadows,
      fontFeatures: style.fontFeatures,
      decoration: style.decoration,
      decorationColor: style.decorationColor,
      decorationStyle: style.decorationStyle,
      decorationThickness: style.decorationThickness,
      debugLabel: style.debugLabel,
      overflow: style.overflow,
    );

  /// Predefined text style with black color.
  _MyTextStyle get black =>
    _MyTextStyle(copyWith(color: const Color(0xFF000000)));

  /// Predefined text style with white color.
  _MyTextStyle get white =>
    _MyTextStyle(copyWith(color: const Color(0xFFFFFFFF)));

  /// Predefined text style with grey color.
  _MyTextStyle get grey =>
    _MyTextStyle(copyWith(color: const Color(0xFF8E8E93)));

  /// Predefined text style with success color.
  _MyTextStyle get success =>
    _MyTextStyle(copyWith(color: const Color(0xFF34C759)));

  /// Predefined text style with error color.
  _MyTextStyle get error =>
    _MyTextStyle(copyWith(color: const Color(0xFFFF3B30)));

  /// Predefined text style with warning color.
  _MyTextStyle get warning =>
    _MyTextStyle(copyWith(color: const Color(0xFFFF9500)));

  /// Predefined text style with link color.
  _MyTextStyle get link =>
    _MyTextStyle(copyWith(color: const Color(0xFF0A84FF)));

  /// Predefined text style with underline decoration.
  _MyTextStyle get underline =>
    _MyTextStyle(copyWith(decoration: TextDecoration.underline));

  /// Predefined text style with line-through decoration.
  _MyTextStyle get lineThrough =>
    _MyTextStyle(copyWith(decoration: TextDecoration.lineThrough));

  /// Predefined text style with overline decoration.
  _MyTextStyle get overline =>
    _MyTextStyle(copyWith(decoration: TextDecoration.overline));

  ////* Colors can be set
  ////
  /// Returns a new text style with the specified [color].
  _MyTextStyle setColor(Color color) => _MyTextStyle(copyWith(color: color));
}

/// Wrapper for [_MyTextStyle] that provides a set of text styles.
class _CupertinoMyTextStyleSet extends _MyTextStyle {
  /// The bold text style.
  @override
  final _MyTextStyle bold;

  _CupertinoMyTextStyleSet({required TextStyle regular, required TextStyle bold})
    : bold = _MyTextStyle(bold),
    super(regular);
}

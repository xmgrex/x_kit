import 'package:flutter/material.dart';

///* Used Material Design3
///
/// Use as:
///
/// Text("Hello!", styles: TextStyles.title.large.white);
///
class TextStyles {
  TextStyles._();

  static const fontFamily = "Hiragino Sans";

  static _toStyle(double fontSize, double height, FontWeight fontWeight,
      double letterSpacing,
      {Color? color, TextDecoration? decoration}) {
    return TextStyle(
      fontFamily: TextStyles.fontFamily,
      color: color,
      fontSize: fontSize,
      // textBaseline: TextBaseline,
      // baseline 設定がうまくいかず height 指定すると下寄りの文字になってしまうので、適用を保留
      height: height / fontSize,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      decoration: decoration,
    );
  }

  ///* large: _toStyle(size: 57, height: 64, FontWeight.w500, spacing: 0),
  ///
  ///* medium: _toStyle(size: 45, height:52, FontWeight.w500, spacing: 0),
  ///
  ///* small: _toStyle(size: 36, height:44, FontWeight.w500, spacing: 0),
  static final display = _MyTextStyleSet(
    large: _toStyle(57, 64, FontWeight.w400, 0),
    medium: _toStyle(45, 52, FontWeight.w400, 0),
    small: _toStyle(36, 44, FontWeight.w400, 0),
  );

  ///* large: _toStyle(size: 32, height:40, FontWeight.w500, spacing: 0),
  ///
  ///* medium: _toStyle(size: 28, height:36, FontWeight.w500, spacing: 0),
  ///
  ///* small: _toStyle(size: 24, height:32, FontWeight.w500, spacing: 0),
  static final headline = _MyTextStyleSet(
    large: _toStyle(32, 40, FontWeight.w400, 0),
    medium: _toStyle(28, 36, FontWeight.w400, 0),
    small: _toStyle(24, 32, FontWeight.w400, 0),
  );

  ///* large: _toStyle(size: 22, height:28, FontWeight.w500, spacing: 0),
  ///
  ///* medium: _toStyle(size: 16, height:24, FontWeight.w500, spacing: 0.15),
  ///
  ///* small: _toStyle(size: 14, height:20, FontWeight.w500, spacing: 0.1),
  static final title = _MyTextStyleSet(
    large: _toStyle(22, 28, FontWeight.w400, 0),
    medium: _toStyle(16, 24, FontWeight.w500, 0.15),
    small: _toStyle(14, 20, FontWeight.w500, 0.1),
  );

  ///* large: _toStyle(size: 14, height:20, FontWeight.w500, spacing: 0.1),
  ///
  ///* medium: _toStyle(size: 12, height:16, FontWeight.w500, spacing: 0.5),
  ///
  ///* small: _toStyle(size: 11, height:16, FontWeight.w500, spacing: 0.5),
  static final label = _MyTextStyleSet(
    large: _toStyle(14, 20, FontWeight.w500, 0.1),
    medium: _toStyle(12, 16, FontWeight.w500, 0.5),
    small: _toStyle(11, 16, FontWeight.w500, 0.5),
  );

  ///* large: _toStyle(size: 16, height:24, FontWeight.w400, spacing: 0.15),
  ///
  ///* medium: _toStyle(size: 14, height:20, FontWeight.w400, spacing: 0.25),
  ///
  ///* small: _toStyle(size: 12, height:16, FontWeight.w500, spacing: 0.4),
  static final body = _MyTextStyleSet(
    large: _toStyle(16, 24, FontWeight.w400, 0.15),
    medium: _toStyle(14, 20, FontWeight.w400, 0.25),
    small: _toStyle(12, 16, FontWeight.w400, 0.4),
  );

  ///* (size: 12, height: 16, FontWeight.w500, spacing: 0.4),
  static final caption = body.small;

  ///* (size: 14, height: 20, FontWeight.w500, spacing: 0.1),
  static final button = label.large;

  ///* (size: 11, height: 16, FontWeight.w500, spacing: 0.4),
  static final overline = label.small;
}

/// Wrapper for TextStyle
class _MyTextStyle extends TextStyle {
  _MyTextStyle(TextStyle style)
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

  _MyTextStyle get black =>
      _MyTextStyle(copyWith(color: const Color(0xFF000000)));

  _MyTextStyle get white =>
      _MyTextStyle(copyWith(color: const Color(0xFFFFFFFF)));

  _MyTextStyle get grey =>
      _MyTextStyle(copyWith(color: const Color(0xFF8E8E93)));

  _MyTextStyle get success =>
      _MyTextStyle(copyWith(color: const Color(0xFF34C759)));

  _MyTextStyle get error =>
      _MyTextStyle(copyWith(color: const Color(0xFFFF3B30)));

  _MyTextStyle get warning =>
      _MyTextStyle(copyWith(color: const Color(0xFFFF9500)));

  _MyTextStyle get link => _MyTextStyle(copyWith(color: Colors.blueAccent));

  /// FontWeight.w700
  _MyTextStyle get bold => _MyTextStyle(copyWith(fontWeight: FontWeight.bold));

  /// FontWeight.w600
  _MyTextStyle get medium =>
      _MyTextStyle(copyWith(fontWeight: FontWeight.w600));

  /// FontWeight.w400
  _MyTextStyle get light => _MyTextStyle(copyWith(fontWeight: FontWeight.w400));

  _MyTextStyle get underline =>
      _MyTextStyle(copyWith(decoration: TextDecoration.underline));

  _MyTextStyle get lineThrough =>
      _MyTextStyle(copyWith(decoration: TextDecoration.lineThrough));

  _MyTextStyle get overline =>
      _MyTextStyle(copyWith(decoration: TextDecoration.overline));

  ///* Colors can be set
  ///
  _MyTextStyle setColor(Color color) => _MyTextStyle(copyWith(color: color));
}

class _MyTextStyleSet extends _MyTextStyle {
  final _MyTextStyle large;
  // medium is this
  final _MyTextStyle small;

  _MyTextStyleSet(
      {required TextStyle large,
      required TextStyle medium,
      required TextStyle small})
      : large = _MyTextStyle(large),
        small = _MyTextStyle(small),
        super(medium);
}

extension ExtendTextStyle on TextStyle {
  TextStyle onTheme(BuildContext context) {
    final isDarkOn = Theme.of(context).brightness == Brightness.dark;
    return copyWith(color: isDarkOn ? Colors.white : Colors.black);
  }

  TextStyle colorFromBackground(Color background) {
    return copyWith(
      color: background.computeLuminance() > 0.3 ? Colors.black : Colors.white,
    );
  }
}

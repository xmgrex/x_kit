import 'package:flutter/material.dart';
import 'colors.dart';


///body.small = Size: 12, height: 16, FontWeight: w400, Spacing: 0.4
///
/// Use as:
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
      // baseline 設定がうまくいかず height 指定すると下寄りの文字になってしまうので、適用を保留
      // height: height / fontSize,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      decoration: decoration,
    );
  }

  static final display = _MyTextStyleSet(
    large: _toStyle(57, 64, FontWeight.w500, 0),
    medium: _toStyle(45, 52, FontWeight.w500, 0),
    small: _toStyle(36, 44, FontWeight.w500, 0),
  );

  static final headline = _MyTextStyleSet(
    large: _toStyle(32, 40, FontWeight.w500, 0),
    medium: _toStyle(28, 36, FontWeight.w500, 0),
    small: _toStyle(24, 32, FontWeight.w500, 0),
  );

  static final title = _MyTextStyleSet(
    large: _toStyle(22, 28, FontWeight.w500, 0),
    medium: _toStyle(16, 24, FontWeight.w500, 0.15),
    small: _toStyle(14, 20, FontWeight.w500, 0.1),
  );

  static final label = _MyTextStyleSet(
    large: _toStyle(14, 20, FontWeight.w500, 0.1),
    medium: _toStyle(12, 16, FontWeight.w500, 0.5),
    small: _toStyle(11, 16, FontWeight.w500, 0.5),
  );

  static final body = _MyTextStyleSet(
    large: _toStyle(16, 24, FontWeight.w400, 0.15),
    ///large: _toStyle(Size: 16, height: 24, FontWeight: w400, Spacing: 0.15),
    medium: _toStyle(14, 20, FontWeight.w400, 0.25),
    ///medium: _toStyle(Size: 14, height: 20, FontWeight: w400, Spacing: 0.25),
    small: _toStyle(12, 16, FontWeight.w400, 0.4),
    ///small: _toStyle(Size: 12, height: 16, FontWeight: w400, Spacing: 0.4),
  );

  static final link = _MyTextStyleSet(
    large: _toStyle(16, 24, FontWeight.w400, 0.15, color: Colors.blueAccent),
    medium: _toStyle(14, 20, FontWeight.w400, 0.25, color: Colors.blueAccent),
    small: _toStyle(12, 16, FontWeight.w400, 0.4, color: Colors.blueAccent),
  );
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

  _MyTextStyle get black => _MyTextStyle(copyWith(color: SystemColors.grey1000));

  _MyTextStyle get white => _MyTextStyle(copyWith(color: SystemColors.grey100));

  _MyTextStyle get grey => _MyTextStyle(copyWith(color: SystemColors.grey600));

  _MyTextStyle get success => _MyTextStyle(copyWith(color: SystemColors.success));

  _MyTextStyle get error => _MyTextStyle(copyWith(color: SystemColors.error));

  _MyTextStyle get warning => _MyTextStyle(copyWith(color: SystemColors.warning));

  _MyTextStyle get bold => _MyTextStyle(copyWith(fontWeight: FontWeight.w700));

  _MyTextStyle get underline => _MyTextStyle(copyWith(decoration: TextDecoration.underline));

  _MyTextStyle get lineThrough => _MyTextStyle(copyWith(decoration: TextDecoration.lineThrough));

  _MyTextStyle get overline => _MyTextStyle(copyWith(decoration: TextDecoration.overline));
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
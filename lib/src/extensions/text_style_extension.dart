part of extensions;

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

  TextStyle setColor(Color color) => copyWith(color: color);

  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);

///* fontSize: 57, height: 64, fontWeight: FontWeight.w400, letterSpacing: 0,
  TextStyle get displayLarge => copyWith(
        fontSize: 57,
        height: 64 / 57,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
      );

///* fontSize: 46, height: 52, fontWeight: FontWeight.w400, letterSpacing: 0,
  TextStyle get displayMedium => copyWith(
        fontSize: 46,
        height: 52 / 46,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
      );

///* fontSize: 34, height: 40, fontWeight: FontWeight.w400, letterSpacing: 0,
  TextStyle get displaySmall => copyWith(
        fontSize: 34,
        height: 40 / 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
      );

///* fontSize: 28, height: 36, fontWeight: FontWeight.w400, letterSpacing: 0,
  TextStyle get headlineLarge => copyWith(
        fontSize: 32,
        height: 40 / 32,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
      );

///* fontSize: 28, height: 36, fontWeight: FontWeight.w400, letterSpacing: 0,
  TextStyle get headlineMedium => copyWith(
        fontSize: 28,
        height: 36 / 28,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
      );

//* fontSize: 24, height: 32, fontWeight: FontWeight.w400, letterSpacing: 0,
  TextStyle get headlineSmall => copyWith(
        fontSize: 24,
        height: 32 / 24,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
      );

///* fontSize: 22, height: 28, fontWeight: FontWeight.w400, letterSpacing: 0,
  TextStyle get titleLarge => copyWith(
        fontSize: 22,
        height: 28 / 22,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
      );

///* fontSize: 16, height: 24, fontWeight: FontWeight.w500, letterSpacing: 0.15,
  TextStyle get titleMedium => copyWith(
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      );

///* fontSize: 14, height: 20, fontWeight: FontWeight.w500, letterSpacing: 0.1,
  TextStyle get titleSmall => copyWith(
        fontSize: 14,
        height: 20 / 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      );

///* fontSize: 14, height: 20, fontWeight: FontWeight.w500, letterSpacing: 0.1,
  TextStyle get labelLarge => copyWith(
        fontSize: 14,
        height: 20 / 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      );

///* fontSize: 12, height: 16, fontWeight: FontWeight.w500, letterSpacing: 0.5,
  TextStyle get labelMedium => copyWith(
        fontSize: 12,
        height: 16 / 12,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
      );

///* fontSize: 11, height: 16, fontWeight: FontWeight.w500, letterSpacing: 0.5,
  TextStyle get labelSmall => copyWith(
        fontSize: 11,
        height: 16 / 11,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
      );

///* fontSize: 16, height: 24, fontWeight: FontWeight.w400, letterSpacing: 0.15,
  TextStyle get bodyLarge => copyWith(
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
      );

///* fontSize: 14, height: 20, fontWeight: FontWeight.w400, letterSpacing: 0.25,
  TextStyle get bodyMedium => copyWith(
        fontSize: 14,
        height: 20 / 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      );

///* fontSize: 12, height: 16, fontWeight: FontWeight.w400, letterSpacing: 0.4,
  TextStyle get bodySmall => copyWith(
        fontSize: 12,
        height: 16 / 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
      );

///* fontSize: 12, height: 16, fontWeight: FontWeight.w500, letterSpacing: 0.4,
  TextStyle get caption => bodySmall;

///* fontSize: 14, height: 20, fontWeight: FontWeight.w500, letterSpacing: 0.1,
  TextStyle get button => labelLarge;

///* fontSize: 11, height: 16, fontWeight: FontWeight.w500, letterSpacing: 0.4,
  TextStyle get overline => labelSmall;

  TextStyle get underline => copyWith(decoration: TextDecoration.underline);
}

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
  TextStyle get displaySmall => Platform.isIOS
      ? CupertinoTextStyles.largeTitle
      : copyWith(
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
  TextStyle get headlineMedium => Platform.isIOS
      ? CupertinoTextStyles.title1
      : copyWith(
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
  TextStyle get titleLarge => Platform.isIOS
      ? CupertinoTextStyles.title2
      : copyWith(
          fontSize: 22,
          height: 28 / 22,
          fontWeight: FontWeight.w400,
          letterSpacing: 0,
        );

  ///* fontSize: 16, height: 24, fontWeight: FontWeight.w500, letterSpacing: 0.15,
  TextStyle get titleMedium => Platform.isIOS
      ? CupertinoTextStyles.title3
      : copyWith(
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
  TextStyle get labelLarge => Platform.isIOS
      ? CupertinoTextStyles.callOut
      : copyWith(
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
  TextStyle get bodyLarge => Platform.isIOS
      ? CupertinoTextStyles.body
      : copyWith(
          fontSize: 16,
          height: 24 / 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.15,
        );

  ///* fontSize: 14, height: 20, fontWeight: FontWeight.w400, letterSpacing: 0.25,
  TextStyle get bodyMedium => Platform.isIOS
      ? CupertinoTextStyles.subHeadline
      : copyWith(
          fontSize: 14,
          height: 20 / 14,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
        );

  ///* fontSize: 12, height: 16, fontWeight: FontWeight.w400, letterSpacing: 0.4,
  TextStyle get bodySmall => Platform.isIOS
      ? CupertinoTextStyles.footnote
      : copyWith(
          fontSize: 12,
          height: 16 / 12,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.4,
        );

  ///* fontSize: 12, height: 16, fontWeight: FontWeight.w500, letterSpacing: 0.4,
  TextStyle get caption =>
      Platform.isIOS ? CupertinoTextStyles.caption1 : bodySmall;

  ///* fontSize: 14, height: 20, fontWeight: FontWeight.w500, letterSpacing: 0.1,
  TextStyle get button => labelLarge;

  TextStyle get black => copyWith(color: const Color(0xFF000000));

  TextStyle get white => copyWith(color: const Color(0xFFFFFFFF));

  TextStyle get grey => copyWith(color: const Color(0xFF8E8E93));

  TextStyle get success => copyWith(color: const Color(0xFF34C759));

  TextStyle get error => copyWith(color: const Color(0xFFFF3B30));

  TextStyle get warning => copyWith(color: const Color(0xFFFF9500));

  TextStyle get link => copyWith(color: const Color(0xFF0A84FF));

  TextStyle get underline => copyWith(decoration: TextDecoration.underline);

  TextStyle get lineThrough => copyWith(decoration: TextDecoration.lineThrough);

  TextStyle get overline => copyWith(decoration: TextDecoration.overline);
}

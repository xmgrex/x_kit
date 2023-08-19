part of styles;

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
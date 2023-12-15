part of extensions;

extension TextEx on Text {
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

  TextStyle get bold => copyWith(fontWeight: fontWeight: Platform.isIOS ? FontWeight.w600 : FontWeight.w700,);
}
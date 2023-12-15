part of widgets;

class XText extends StatelessWidget {
  XText.largeTitle(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
  }) : style = Platform.isIOS
            ? const TextStyle().displaySmall
            : CupertinoTextStyles.largeTitle;

  XText.title1(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
  }) : style = Platform.isIOS
            ? const TextStyle().headlineMedium
            : CupertinoTextStyles.title1;
  XText.title2(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
  }) : style = Platform.isIOS
            ? const TextStyle().headlineSmall
            : CupertinoTextStyles.title2;
  XText.title3(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
  }) : style = Platform.isIOS
            ? const TextStyle().titleLarge
            : CupertinoTextStyles.title3;

  XText.headline(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
  }) : style = Platform.isIOS
            ? const TextStyle().titleMedium
            : CupertinoTextStyles.headline;

  XText.body(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
  }) : style = Platform.isIOS
            ? const TextStyle().bodyLarge
            : CupertinoTextStyles.body;

  XText.callOut(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
  }) : style = Platform.isIOS
            ? const TextStyle().bodyMedium
            : CupertinoTextStyles.callOut;

  XText.subHeadline(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
  }) : style = Platform.isIOS
            ? const TextStyle().titleMedium
            : CupertinoTextStyles.subHeadline;

  XText.footnote(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
  }) : style = Platform.isIOS
            ? const TextStyle().bodySmall
            : CupertinoTextStyles.footnote;
  XText.caption1(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
  }) : style = Platform.isIOS
            ? const TextStyle().bodySmall
            : CupertinoTextStyles.caption1;
  XText.caption2(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
  }) : style = Platform.isIOS
            ? const TextStyle().labelMedium
            : CupertinoTextStyles.caption2;

  XText get bold => copyWith(
        style: style.copyWith(
          fontWeight: Platform.isIOS ? FontWeight.w600 : FontWeight.w700,
        ),
      );

  XText setColor(Color color) => copyWith(color: color);

  XText colorFromBg(Color background) {
    return copyWith(
      color: background.computeLuminance() > 0.3 ? Colors.black : Colors.white,
    );
  }

  XText get black => copyWith(color: const Color(0xFF000000));

  XText get white => copyWith(color: const Color(0xFFFFFFFF));

  XText get grey => copyWith(color: const Color(0xFF8E8E93));

  XText get success => copyWith(color: const Color(0xFF34C759));

  XText get error => copyWith(color: const Color(0xFFFF3B30));

  XText get warning => copyWith(color: const Color(0xFFFF9500));

  XText get link => copyWith(color: const Color(0xFF0A84FF));

  XText get underline => copyWith(
        style: style.copyWith(decoration: TextDecoration.underline),
      );

  XText get lineThrough => copyWith(
        style: style.copyWith(decoration: TextDecoration.lineThrough),
      );

  XText get overline => copyWith(
        style: style.copyWith(decoration: TextDecoration.overline),
      );

  const XText(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
    this.style = const TextStyle(),
  });

  final String text;
  final TextStyle style;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style.copyWith(color: color),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: maxLines == null ? null : TextOverflow.ellipsis,
    );
  }

  //copyWith
  XText copyWith({
    Key? key,
    String? text,
    TextStyle? style,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
  }) {
    return XText(
      text ?? this.text,
      key: key ?? this.key,
      style: style ?? this.style,
      color: color ?? this.color,
      textAlign: textAlign ?? this.textAlign,
      maxLines: maxLines ?? this.maxLines,
    );
  }
}

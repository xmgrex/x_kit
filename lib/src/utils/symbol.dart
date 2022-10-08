import 'package:currency_formatter/currency_formatter.dart';

String symbolFormatter(dynamic amount, {String? currency}) {
  final c = CurrencyFormatterSettings.local;
  final formatter = currency != null
      ? CurrencyFormatter.majors[currency.toLowerCase()]!
      : c ?? CurrencyFormatterSettings.jpy;
  return CurrencyFormatter.format(
    amount,
    formatter,
  );
}

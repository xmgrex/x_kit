import 'package:currency_formatter/currency_formatter.dart';

String symbolFormatter(num amount, {String? code, String? symbol}) {
  final settings = CurrencyFormat(symbol: symbol ?? '¥', code: code ?? 'jpy');
  return CurrencyFormatter.format(amount, settings, compact: true);
}

import 'package:currency_formatter/currency_formatter.dart';

String symbolFormatter(dynamic amount, String currency) {
  return CurrencyFormatter.format(amount, CurrencyFormatter.majors[currency.toLowerCase()]!);
}
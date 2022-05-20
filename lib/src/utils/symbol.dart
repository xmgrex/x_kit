import 'package:currency_formatter/currency_formatter.dart';

final CurrencyFormatter cf = CurrencyFormatter();

String symbolFormatter(dynamic amount, String currency) {
  return cf.format(amount, cf.majors[currency.toLowerCase()]!);
}
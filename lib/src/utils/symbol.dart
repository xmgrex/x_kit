import 'package:currency_formatter/currency_formatter.dart';

final CurrencyFormatter cf = CurrencyFormatter();

String symbolFormatter(int amount, String currency) {
  return cf.format(amount, cf.majors[currency.toLowerCase()]!);
}
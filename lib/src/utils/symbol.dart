import 'package:currency_formatter/currency_formatter.dart';

String symbolFormatter(dynamic amount, {String? currency}) {
  final c = CurrencyFormatterSettings.local;
  return CurrencyFormatter.format(
    amount,
    CurrencyFormatter
        .majors[currency != null ? currency.toLowerCase : c!.symbol]!,
  );
}

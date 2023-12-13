part of extensions;

extension DateTimeEx on DateTime {
  bool isEqualToDate(DateTime date) {
    return difference(date).inDays == 0 && day == date.day;
  }

  DateTime get onlyDate {
    return DateTime(year, month, day);
  }

  String get onlyDateString {
    final monthString =
        month.toString().length == 1 ? '$month'.padLeft(2, '0') : '$month';
    final dayString =
        day.toString().length == 1 ? '$day'.padLeft(2, '0') : '$day';
    return '$year$monthString$dayString';
  }

  DateTime startOfMonth({DateTime? date}) {
    date = date ?? DateTime.now();
    return DateTime(date.year, date.month, 1);
  }

  DateTime endOfMonth({DateTime? date}) {
    date = date ?? DateTime.now();
    return DateTime(date.year, date.month + 1, 0);
  }

  String get monthDay {
    var monthString = month.toString();
    var dayString = day.toString();
    // if (month.toString().length == 1) {
    //   monthString = '0$month';
    // }
    // if (day.toString().length == 1) {
    //   dayString = '0$day';
    // }
    return '$monthString.$dayString';
  }

  List<DateTime> getDatesForMonth() {
    final List<DateTime> dates = [];
    final int daysInMonth = DateTime(year, month + 1, 0).day;
    final DateTime firstDay = DateTime(year, month, 1);
    for (int i = 0; i < daysInMonth; i++) {
      final DateTime day = DateTime(firstDay.year, firstDay.month, i + 1);
      dates.add(day);
    }
    return dates;
  }

  DateTime toYMD() {
    return DateTime(year, month, day);
  }

  String toYMDString({String separator = '/'}) {
    final monthString =
        month.toString().length == 1 ? '$month'.padLeft(2, '0') : '$month';
    final dayString =
        day.toString().length == 1 ? '$day'.padLeft(2, '0') : '$day';
    return '$year$separator$monthString$separator$dayString';
  }

  String toMDString({String separator = '/'}) {
    final monthString =
        month.toString().length == 1 ? '$month'.padLeft(2, '0') : '$month';
    final dayString =
        day.toString().length == 1 ? '$day'.padLeft(2, '0') : '$day';
    return '$monthString$separator$dayString';
  }
}

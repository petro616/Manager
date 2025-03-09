import 'package:intl/intl.dart';

class DataUtilsTaskManager {
  static DateTime selectedDate = DateTime.now();

  static DateTime getFirstDayOfMonth(DateTime date) {
    return DateTime(date.year, date.month, 1);
  }

  static DateTime getLastDayOfMonth(DateTime date) {
    return DateTime(date.year, date.month + 1, 0);
  }

  static String dayName = DateFormat('EEEE').format(now);
}

final DateTime now = DateTime.now();
final DateTime firstDayOfMonth = DataUtilsTaskManager.getFirstDayOfMonth(now);
final DateTime lastDayOfMonth = DataUtilsTaskManager.getLastDayOfMonth(now);


import 'package:intl/intl.dart';

extension DateTimeUtils on DateTime {
  int get dayId {
    return year * 1000 + month * 100 + day;
  }

  String formattedDate([String? locale]) {
    final dateDay = DateFormat.MMMd(locale ?? 'en_US');
    final year = DateFormat.y();

    return '${dateDay.format(this)}, ${year.format(this)}';
  }
}
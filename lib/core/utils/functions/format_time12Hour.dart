import 'package:intl/intl.dart';

String formatTime12Hour(String time24Hour) {
  DateFormat dateFormat24Hour = DateFormat('HH:mm');
  DateFormat dateFormat12Hour = DateFormat('jm');
  final time24HourParsed = dateFormat24Hour.parse(time24Hour);
  return dateFormat12Hour.format(time24HourParsed);
}
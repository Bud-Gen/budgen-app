import 'package:intl/intl.dart';

class DateFormated {
  String toABNT(DateTime date) {
    return DateFormat('dd/MM/yyyy').format(date);
  }
}

import 'package:intl/intl.dart';

String capitalizeFst(String text) {
  if (text.isEmpty) {
    return text;
  }
  return text[0].toUpperCase() + text.substring(1);
}

String showcaseTitle(String text) {
  final coinMap = {
    'ONE_EURO': '1 Euro',
    'TWO_EURO': '2 Euro',
    'FIFTY_CENT': '50 Cent',
    'TWENTY_CENT': '20 Cent',
    'TEN_CENT': '10 Cent',
    'FIVE_CENT': '5 Cent',
    'TWO_CENT': '2 Cent',
    'ONE_CENT': '1 Cent',
    'COMMEMORATIVE': 'Commemorative',
  };

  return coinMap[text] ?? text;
}

String convertDate(String dateStr) {
  try {
    DateTime dateTime = DateTime.parse(dateStr);

    String formattedDate = DateFormat('MMM, yyyy').format(dateTime);

    return formattedDate;
  } catch (e) {
    return 'Invalid date format';
  }
}

String convertDateToYear(String dateStr) {
  try {
    DateTime dateTime = DateTime.parse(dateStr);

    String formattedDate = DateFormat('yyyy').format(dateTime);

    return formattedDate;
  } catch (e) {
    return 'Invalid date format';
  }
}

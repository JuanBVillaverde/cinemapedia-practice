import 'package:intl/intl.dart';

class HumanFormats {
  

static String date(DateTime date){
  
    var formatter = DateFormat.MMMMd('en_US');
    String formattedDate = formatter.format(date);
    return formattedDate;
}


static String number(double number, [int decimals = 0]){
  final formattedNumber = NumberFormat.compactCurrency(
    decimalDigits: decimals,
    symbol: '',
    locale: 'en',
  ).format(number);

  return formattedNumber;
}

}
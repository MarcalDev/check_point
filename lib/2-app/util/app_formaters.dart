import 'package:intl/intl.dart';

class AppFormaters{
  static String timeToString(DateTime datetime){
    var inputFormat = DateFormat('yyyy-MM-dd HH:mm');
    var inputTime = inputFormat.parse(datetime.toString());

    var outputFormat = DateFormat('HH:mm');
    return outputFormat.format(inputTime);
  }
}
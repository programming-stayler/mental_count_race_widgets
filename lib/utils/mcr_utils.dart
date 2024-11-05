import 'package:pythagoras/pythagoras.dart';

extension ExpressionModelAccuracy on ExpressionModel {
  bool isMistake(String answer) {
    if (answer.isEmpty) return false;
    final resultStr = result.toString();
    if (answer.length > resultStr.length) return true;
    final focus = answer.length - 1;
    if (answer[focus] != resultStr[focus]) return true;
    return false;
  }
}

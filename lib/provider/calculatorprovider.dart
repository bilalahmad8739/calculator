import 'package:calculator/core/services/calculation.dart';
import 'package:flutter/material.dart';

class CalculatorProvider extends ChangeNotifier {
  var userinput = '';
  var result = '';
  var _result;

  get getResult {
    return _result;
  }

  get userData {
    return userData;
  }

  void setResult(var value1) {
    _result = value1;
    notifyListeners();
  }

  void setUserInput(var value) {
    userinput = value;
    notifyListeners();
  }

  cal() {
    _result = Calculation.equalpress(userinput, result);
    print(" result of two is ${_result}");
    notifyListeners();
  }
}

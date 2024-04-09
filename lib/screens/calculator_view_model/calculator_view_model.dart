import 'package:flutter/material.dart';


class CalculatorViewModel extends ChangeNotifier {
  String _enteredNumber = '';
  int _result = 0;
  String _operator = '';

  String get enteredNumber => _enteredNumber;
  int get result => _result;

  void updateEnteredNumber(String digit) {
    _enteredNumber += digit;
    notifyListeners();
  }

  void performOperation(String operator) {
    _operator = operator;
    if (_enteredNumber.isNotEmpty) {
      _result = int.parse(_enteredNumber);
      _enteredNumber = '';
    }
    notifyListeners();
  }

  void calculateResult() {
    if (_enteredNumber.isNotEmpty) {
      int operand = int.parse(_enteredNumber);
      switch (_operator) {
        case '+':
          _result += operand;
          break;
        case '-':
          _result -= operand;
          break;
        case '*':
          _result *= operand;
          break;
        case '/':
          if (operand != 0) {
            _result ~/= operand;
          }
          break;
      }
      _enteredNumber = '';
      _operator = '';
      notifyListeners();
    }
  }

  void clear() {
    _enteredNumber = '';
    _result = 0;
    _operator = '';
    notifyListeners();
  }
}
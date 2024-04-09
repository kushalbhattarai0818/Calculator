import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier{
int _firstnumber=0;
int _secondnumber=0;
String _operator='';
int _calculation=0;
int _result=0;
String _message='';

int get firstnumber=>_firstnumber;
int get secondnumber=>_secondnumber;
String get operator=>_operator;
int get calculation=>_calculation;
int get result=>_result;
String get message=>_message;


void setfirstnumber(int number){
  _firstnumber=number;

 
  notifyListeners();
}

void setsecondnumber(int number){
  _secondnumber=number;

 
  notifyListeners();
}

void setoperator(String operator){
  _operator=operator;

 
  notifyListeners();
}

void setcalculation(int calculation){
  _calculation=calculation;

 
  notifyListeners();
}

void setresult(int result){
  _result=result;

 
  notifyListeners();
}
void setmessage(String message){
  _message=message;

 
  notifyListeners();
}

void calculate() {
  if (_firstnumber == 0 || _secondnumber == 0 || _operator == '') {
    _message = 'Please enter any number and operator';
  } else {
    switch (_operator) {
      case '+':
        _result = _firstnumber + _secondnumber;
        break;
      case '-':
        _result = _firstnumber - _secondnumber;
        break;
      case '*':
        _result = _firstnumber * _secondnumber;
        break;
      case '/':
        _result = _secondnumber != 0 ? _firstnumber ~/ _secondnumber : 0;
        break;
      default:
        _message = 'Invalid operator';
    }
  }
  notifyListeners();
}
}




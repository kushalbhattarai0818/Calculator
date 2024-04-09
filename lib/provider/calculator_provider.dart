import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier{
final compController=TextEditingController();


 setValue(String value){
     
      switch(value){
      
      case 'AC':
      compController.clear();
      break;

      
      case '%':
  compController.text += ' % ';
  break;


      case '/':
      
      compController.text += ' / ';
      break;

    case 'x':
      
      compController.text += ' * ';
      break;

    case '-':
     
      compController.text += ' - ';
      break;

    case '+':
    
      compController.text += ' + ';
      break;

      case'=':
       compute();
      break;

      default:
      compController.text +=value;

      
    
     

      }
      

      

 }

 compute(){
  String text=compController.text;
compController.text=  text.interpret().toString();

 }
@override
  void dispose() {
   
    super.dispose();
compController.dispose();

  }



}
import 'package:flutter/material.dart';
import 'package:masantar/provider/calculator_provider.dart';
import 'package:masantar/widget/digit_button.dart';
import 'package:masantar/widget/operator_button.dart';
import 'package:provider/provider.dart';

class CalculatorScreen extends StatelessWidget {
 
  const CalculatorScreen({super.key,required this.controller});
 final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Consumer<CalculatorProvider>(
      
        builder: (context,Provider,_) {
          return Scaffold(
            body: Center(
              child: Container(
                height: 812,
                width: 375,
                decoration: BoxDecoration(
                    color: Color(0xff242933),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 5,
                      color: Color(0xffCBE1FF),
                    )),
                child: Column(
                  children: [
                    Container(
                      width: 375,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Color(0xff363E4D),
                        borderRadius: BorderRadius.circular(20),
                      ),
                     
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    Container(
                      width: 375,
                      height: 162,
                       child: Padding(
                         padding: const EdgeInsets.all(12),
                         child: TextField(
                          controller: Provider.compController,
                          
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            fillColor:    Color(0xff363E4D),
                            filled: true,
                             
                            
                          ),
                          style: TextStyle(fontSize: 60,color: Colors.white),
                          showCursor: true,
                          readOnly: true,
                                         ),
                       ),
                    ),
                    SizedBox(
                      height: 55,
                    ),
                    Container(
                      width: 340,
                      height: 430,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              digitButton(
                                label: "AC",
                              ),
                              digitButton(
                                label: "+/-",
                              ),
                              digitButton(
                                label: "%",
                              ),
                              operatorButton(
                               label: '/',
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              digitButton(
                                label: "7",
                              ),
                              digitButton(
                                label: "8",
                              ),
                              digitButton(
                                label: "9",
                              ),
                              operatorButton(
                              label: 'x',
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              digitButton(
                                label: "4",
                              ),
                              digitButton(
                                label: "5",
                              ),
                              digitButton(
                                label: "6",
                              ),
                              operatorButton(
                               label: '-',
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              digitButton(
                                label: "1",
                              ),
                              digitButton(
                                label: "2",
                              ),
                              digitButton(
                                label: "3",
                              ),
                              operatorButton(
                               label: '+',
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                            Zero(
                              label:"0",
                            ),

                              digitButton(
                                label: ".",
                              ),
                              operatorButton(
                               label: "=",
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }
      );
    
  }
}

class Zero extends StatelessWidget {
  const Zero({
    super.key, required this.label,
  });
  final String label;
  

  @override
  Widget build(BuildContext context) {
   
    return InkWell(
      onTap: () {
         Provider.of<CalculatorProvider>(context,listen: false).setValue(label);
      },
      child: Container(
        width: 160,
        height: 79,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xff363E4D),
        ),
        child: Center(
          child: Text(
           label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xffCBE1FF),
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}




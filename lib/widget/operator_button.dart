
import 'package:flutter/material.dart';
import 'package:masantar/provider/calculator_provider.dart';
import 'package:provider/provider.dart';


class operatorButton extends StatelessWidget {
  const operatorButton({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
         Provider.of<CalculatorProvider>(context,listen: false).setValue(label);
      },
      child: Container(
        width: 80,
        height: 79,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xff0060E5),
        ),
        child: Center(
            child: Text(
          label,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xffCBE1FF),
              fontSize: 25),
        )),
      ),
    );
  }
}
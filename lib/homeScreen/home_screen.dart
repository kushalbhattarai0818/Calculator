import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masantar/view_model/view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(create: (context)=>HomeViewModel(),child: Consumer<HomeViewModel>(builder: (context,HomeViewModel ,_){
      return Scaffold(

      body: SingleChildScrollView(
        child: Column(children: [
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
               
                height: 100,
                width: 150,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  
              ),
                child: Center(child: TextField(
                onChanged: (value) {
                  HomeViewModel.setfirstnumber(int.tryParse(value)??0);
                },
                   
                )),
                
               
               ),
             ),
        
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  
              ),
                  child: Center(child: TextField(
                  onChanged: (value) {
                  HomeViewModel.setsecondnumber(int.tryParse(value)??0);
                },
                   
        
                )),
                
                
                           ),
              ),
        
        
        
        ],),
        
        SizedBox(
          height: 20,
        ),
        
         
        
        Container(
         height: 100,
         width:350 ,
        
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 70,
              height: 50,
             decoration: BoxDecoration(
              
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  
              ),
               child: Center(child: GestureDetector(
               
                   
                child: FaIcon(FontAwesomeIcons.minus))),
            ),
             Container(
              width: 70,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  
              ),
              
                child:Center(child: Icon(Icons.add)),
            ),
             Container(
              width: 70,
              height: 50,
             decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  
              ),
                child:  Center(child: FaIcon(FontAwesomeIcons.xmark)),
            ),
             Container(
              width: 70,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  
              ),
                child: Center(child: FaIcon(FontAwesomeIcons.divide)),
            ),
        
          ],
         ),
        
        ),
        SizedBox(
          height: 53,
        ),
        
        Container(
              width: 200,
              height: 50,
             decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  
              ),
              child: Center(child: Text("Calculate",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
             SizedBox(
              height: 180,
             ),
        
        
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
              
                width: 300,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  
              ),
              ),
            )
        
        ],),
      ),
    );
    },));
  }
}
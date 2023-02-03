// Write a flutter code to do navigation between two different pages using a material page
// route.

import 'package:flutter/material.dart';
import 'package:lab_10/program_1_2.dart';

class Lab10P1 extends StatelessWidget {
  const Lab10P1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [ElevatedButton(onPressed: () => {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Lab10P12()))
        }, child:Text("Page-2",style: TextStyle(fontSize: 20,color: Colors.black87),))],
      )
    );
  }
}

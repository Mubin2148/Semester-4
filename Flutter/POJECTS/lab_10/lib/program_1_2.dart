import 'package:flutter/material.dart';
import 'package:lab_10/lab10_p1.dart';

class Lab10P12 extends StatelessWidget {
  const Lab10P12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
          children: [ElevatedButton(onPressed: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Lab10P1()))
          }, child:Text("Page-1",style: TextStyle(fontSize: 20,color: Colors.red),))],
        )
    );
  }
}

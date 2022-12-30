import 'package:flutter/material.dart';

class Lab7p4 extends StatelessWidget {
  const Lab7p4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.greenAccent,child:Center(child: Text("greenAccent")),),flex: 2,),
                  Expanded(
                    child: Container(color: Colors.pinkAccent,child:Center(child: Text("pinkAccent")),),
                    flex: 1,
                  ),
                  Expanded(child: Container(color: Colors.purpleAccent,child:Center(child: Text("purpleAccent")),),flex: 3,),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.yellow,child:Center(child: Text("yellow")),)),
                  Expanded(child: Container(color: Colors.red,child:Center(child: Text("red")),),flex: 2),
                  Expanded(child: Container(color: Colors.cyanAccent,child:Center(child: Text("cyanAccent")),)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.blue,child:Center(child: Text("blue")),),flex: 2),
                  Expanded(child: Container(color: Colors.green,child:Center(child: Text("green")),),flex: 3),
                  Expanded(child: Container(color: Colors.black38,child:Center(child: Text("grey")),),),
                ],
              ),
            ),
          ],
        ));
  }
}

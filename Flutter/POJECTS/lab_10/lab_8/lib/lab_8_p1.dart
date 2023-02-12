// Write a flutter code to display “hello world” using Text widget. Change color & size of text
// using different properties.


import 'package:flutter/material.dart';

class Lab8P1 extends StatelessWidget {
  const Lab8P1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Hello World",style: TextStyle(fontSize: 20,color: Colors.amber),),
    );
  }
}
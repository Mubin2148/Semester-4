// Write a flutter code to use TextField & apply different borders, floating labels, hint text etc.

import 'package:flutter/material.dart';

class Lab8P4 extends StatefulWidget {
  const Lab8P4({Key? key}) : super(key: key);

  @override
  State<Lab8P4> createState() => _Lab8P4State();
}

class _Lab8P4State extends State<Lab8P4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
      Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
          obscureText: false,
          obscuringCharacter: "*",
          decoration: const InputDecoration(
              labelText: "enter Name",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)))),

          controller: TextEditingController(),
      style: const TextStyle(color: Colors.black, fontSize: 15),
    ),)
    ]
    ,
    )
    ,
    );
  }
}
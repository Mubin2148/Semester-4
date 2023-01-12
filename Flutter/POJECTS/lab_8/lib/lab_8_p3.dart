// Write a flutter code to use TextField and print the input value into the terminal using the
// controller.

import 'package:flutter/material.dart';

class Lab8P3 extends StatelessWidget {
  const Lab8P3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Text(
                "Enter user name",
                style: TextStyle(fontSize: 20, color: Colors.black),
              )),
          TextFormField(
            controller: TextEditingController(),
            style: TextStyle(color: Colors.black, fontSize: 15),
          )
        ],
      ),
    );
  }
}

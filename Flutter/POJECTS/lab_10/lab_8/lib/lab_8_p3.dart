// Write a flutter code to use TextField and print the input value into the terminal using the
// controller.

import 'package:flutter/material.dart';

class Lab8P3 extends StatefulWidget {
  Lab8P3({Key? key}) : super(key: key);

  @override
  State<Lab8P3> createState() => _Lab8P3State();
}

class _Lab8P3State extends State<Lab8P3> {
  TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text("Enter the name",style: TextStyle(fontSize: 20),)),
        ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextFormField(
                  controller:myController ,
                  onChanged: (value) {
                    print(value);
                    setState(() {
                    });
                  },
                  style: const TextStyle(color: Colors.black, fontSize: 15),
                ),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Text(myController.text,style: TextStyle(fontSize: 30,color: Colors.amber,)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
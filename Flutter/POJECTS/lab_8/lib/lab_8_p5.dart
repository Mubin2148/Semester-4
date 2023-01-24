// Write a flutter code to print TextField value into Text widget on a click of a Button.

import 'package:flutter/material.dart';

class Lab8P5 extends StatefulWidget {
  Lab8P5({Key? key}) : super(key: key);

  @override
  State<Lab8P5> createState() => _Lab8P5State();
}

class _Lab8P5State extends State<Lab8P5> {
  TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              "Enter the name",
              style: TextStyle(fontSize: 20),
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: "enter Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                  controller: myController,
                  style: const TextStyle(color: Colors.black, fontSize: 15),
                ),
                TextButton(
                  onPressed: () => {
                  setState(() {
                  })
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Text(myController.text,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.red,
                        )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

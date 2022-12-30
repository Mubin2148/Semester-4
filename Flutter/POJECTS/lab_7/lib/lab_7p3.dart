import 'package:flutter/material.dart';

class Lab7p3 extends StatelessWidget {
  const Lab7p3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(child: Container(color: Colors.greenAccent)),
              Expanded(
                child: Container(color: Colors.pinkAccent),
                flex: 1,
              ),
              Expanded(child: Container(color: Colors.purpleAccent)),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Container(color: Colors.yellow)),
              Expanded(child: Container(color: Colors.red)),
              Expanded(child: Container(color: Colors.cyanAccent)),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Container(color: Colors.blue)),
              Expanded(child: Container(color: Colors.green)),
              Expanded(child: Container(color: Colors.black38)),
            ],
          ),
        ),
      ],
    ));
  }
}

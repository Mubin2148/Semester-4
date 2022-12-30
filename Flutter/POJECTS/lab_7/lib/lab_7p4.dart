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
              Expanded(
                child: Container(
                  color: Colors.greenAccent,margin: EdgeInsets.all(5.0),
                  child: Center(child: Text("greenAccent")),
                ),
                flex: 2,
              ),
              Expanded(
                child: Container(
                  color: Colors.pinkAccent,margin: EdgeInsets.all(5.0),
                  child: Center(child: Text("pinkAccent")),
                ),
                flex: 1,
              ),
              Expanded(
                child: Container(
                  color: Colors.purpleAccent,margin: EdgeInsets.all(5.0),
                  child: Center(child: Text("purpleAccent")),
                ),
                flex: 3,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: Container(
                color: Colors.yellow,margin: EdgeInsets.all(5.0),
                child: Center(child: Text("yellow")),
              )),
              Expanded(
                  child: Container(
                    color: Colors.red,margin: EdgeInsets.all(5.0),
                    child: Center(child: Text("red")),
                  ),
                  flex: 2),
              Expanded(
                  child: Container(
                color: Colors.cyanAccent,margin: EdgeInsets.all(5.0),
                child: Center(child: Text("cyanAccent")),
              )),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: Container(
                    color: Colors.blue,margin: EdgeInsets.all(5.0),
                    child: Center(child: Text("blue")),
                  ),
                  flex: 2),
              Expanded(
                  child: Container(
                    color: Colors.green,margin: EdgeInsets.all(5.0),
                    child: Center(child: Text("green")),
                  ),
                  flex: 3),
              Expanded(
                child: Container(
                  color: Colors.black38,margin: EdgeInsets.all(5.0),
                  child: Center(child: Text("grey")),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

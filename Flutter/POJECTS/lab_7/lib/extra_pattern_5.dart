import 'package:flutter/material.dart';

class Pattern5 extends StatelessWidget {
  const Pattern5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:(
      Row(
        children: [
          Expanded(
            flex:1,
            child: Column(children: [
              Expanded(child: Container(color:Colors.amber))
            ],),
          ),
          Expanded(
            flex:2,
            child: Column(children: [
              Expanded(child: Container(color:Colors.brown))
            ],),
          ),
          Expanded(
            flex:3,
            child: Column(children: [
              Expanded(child: Container(color:Colors.green))
            ],),
          ),
        ],
      )
      ),
    );
  }
}

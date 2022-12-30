import 'package:flutter/material.dart';

class Pattern1 extends StatelessWidget {
  const Pattern1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.red)),
                Expanded(child: Container(color: Colors.transparent)),
                Expanded(child: Container(color: Colors.lightBlue))
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.transparent)),
                Expanded(child: Container(color: Colors.transparent)),
                Expanded(child: Container(color: Colors.transparent))
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.transparent)),
                Expanded(child: Container(color: Colors.transparent)),
                Expanded(child: Container(color: Colors.green))
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.transparent)),
                Expanded(child: Container(color: Colors.transparent)),
                Expanded(child: Container(color: Colors.transparent))
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.transparent)),
                Expanded(child: Container(color: Colors.transparent)),
                Expanded(child: Container(color: Colors.pink))
              ],
            ),
          )
        ],
      )
    );
  }
}

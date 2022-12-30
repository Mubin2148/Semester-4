import 'package:flutter/material.dart';

class Lab7p1 extends StatelessWidget {
  const Lab7p1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(
                child: Row(
                  children: [Expanded(child: Container(color: Colors.blue))],
                )),
            Expanded(
                child: Row(
                  children: [Expanded(child: Container(color: Colors.red))],
                )),
            Expanded(
                child: Row(
                  children: [Expanded(child: Container(color: Colors.green))],
                ))
          ],
        ));
  }
}

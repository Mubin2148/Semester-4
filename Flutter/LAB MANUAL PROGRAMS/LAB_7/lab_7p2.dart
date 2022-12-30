import 'package:flutter/material.dart';

class Lab7p2 extends StatelessWidget {
  const Lab7p2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
          children: [
            Expanded(
                child: Column(
                  children: [Expanded(child: Container(color: Colors.blue))],
                )),
            Expanded(
                child: Column(
                  children: [Expanded(child: Container(color: Colors.red))],
                )),
            Expanded(
                child: Column(
                  children: [Expanded(child: Container(color: Colors.green))],
                ))
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:lab_8/lab_8_p1.dart';
import 'package:lab_8/lab_8_p2.dart';
import 'package:lab_8/lab_8_p3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Lab8P3(),
    );
  }
}

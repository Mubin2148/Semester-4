// Write a flutter code to create a custom Text widget with different fonts & use it.

import 'package:flutter/material.dart';

class Lab8P2 extends StatelessWidget {
  const Lab8P2(
      {Key? key,
      this.text,
      this.size,
      this.color,
      this.bgColor,
      this.textAlign})
      : super(key: key);
  final text;
  final size;
  final color;
  final bgColor;
  final textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: "Roboto",
        fontSize: size ?? 10,
        color: color ?? Colors.black,
        backgroundColor: this.bgColor ?? Colors.transparent,
      ),
      textAlign: textAlign,
    );
  }
}

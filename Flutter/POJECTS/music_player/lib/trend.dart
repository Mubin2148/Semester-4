import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TrendPage extends StatelessWidget {
  const TrendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
          appBar:AppBar(title: Text("Trend Page"),)
      ),
    );
  }
}

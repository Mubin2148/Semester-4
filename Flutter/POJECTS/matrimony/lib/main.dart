import 'package:flutter/material.dart';
import 'package:my_flutter_app/login_page.dart';
import 'package:my_flutter_app/users.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  // const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Users(),
    );
  }
}
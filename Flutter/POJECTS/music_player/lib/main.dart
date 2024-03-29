import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music_player/home_page.dart';
import 'package:music_player/all_page.dart';
import 'package:music_player/music_playing.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  // const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AllPage(),
    );
  }
}
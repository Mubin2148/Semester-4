import 'package:flutter/material.dart';
import 'package:lab_7/extra_pattern_1.dart';
import 'package:lab_7/extra_pattern_2.dart';
import 'package:lab_7/extra_pattern_3.dart';
import 'package:lab_7/extra_pattern_4.dart';
import 'package:lab_7/extra_pattern_5.dart';
import 'package:lab_7/lab_7p3.dart';
import 'package:lab_7/lab_7p4.dart';
import 'package:lab_7/pattern_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImagePattern(),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:my_first_project/lab_8.dart';
//
// void main() {
//   runApp(const MaterialApp(
//     title: 'Navigation Basics',
//     home: FirstRoute(),
//   ));
// }
//
// class FirstRoute extends StatelessWidget {
//   const FirstRoute({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('First Route'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: const Text('Open route'),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => Lab_8()),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class SecondRoute extends StatelessWidget {
//   const SecondRoute({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Second Route'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: const Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }
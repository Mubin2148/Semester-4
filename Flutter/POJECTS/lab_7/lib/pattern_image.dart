import 'package:flutter/material.dart';

class ImagePattern extends StatelessWidget {
  const ImagePattern({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Row(
      children: [
        Expanded(
            child: Column(
          children: [
            Expanded(flex:3,child: Container(child:Image.asset("assets/images/image.jpg"),margin: EdgeInsets.all(5))),
            Expanded(flex:2,child: Container(color: Colors.brown,margin: EdgeInsets.all(5))),
            Expanded(flex:1,child: Container(color: Colors.green,margin: EdgeInsets.all(5)))
          ],
        )),
        Expanded(
            flex: 2,
            child: Column(
              children: [Expanded(child: Container(color: Colors.red,margin: EdgeInsets.all(5)))],
            ))
      ],
    ));
  }
}

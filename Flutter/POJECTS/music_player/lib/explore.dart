import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromRGBO(17, 20, 39, 1),
          appBar: AppBar(
            leading: Icon(Icons.arrow_back),
            title: Container(
                margin: EdgeInsets.all(78),
                child: Text(
                  "Hip Hop",
                  style: TextStyle(fontFamily: "Medium"),
                )),
            backgroundColor: Color.fromRGBO(17, 20, 39, 1),
          ),
          body: Container(

            child: ListView(
              children: [
                Row(children: [
                  albumContainer("assets/images/fourth.jpg", "Rap Gangs"),
                  albumContainer("assets/images/second.jpg", "Rap Party"),
                ]),
                Row(children: [
                  albumContainer("assets/images/peli.jpg", "Hip Hop Now"),
                  albumContainer("assets/images/fifth.jpg", "Rap Dizz"),
                ]),
                Row(children: [
                  albumContainer("assets/images/eightth.jpg", "Beats and Rhythms"),
                  albumContainer("assets/images/sixth.jpg", "Rap Dizz"),
                ]),
                Row(children: [
                  albumContainer("assets/images/seventh.jpg", "Blessed"),
                  albumContainer("assets/images/third.jpg", "Hurrah"),
                ]),
                Row(children: [
                  albumContainer("assets/images/fourth.jpg", "Blah"),
                  albumContainer("assets/images/second.jpg", "Blessed"),
                ]),
                Row(children: [
                  albumContainer("assets/images/peli.jpg", " "),
                  albumContainer("assets/images/fifth.jpg", "Gutano"),
                ]),
                Row(children: [
                  albumContainer("assets/images/eightth.jpg", "Ourato"),
                  albumContainer("assets/images/sixth.jpg", " "),
                ]),
                Row(children: [
                  albumContainer("assets/images/seventh.jpg", "Derito"),
                  albumContainer("assets/images/peli.jpg", "Dizz"),
                ]),
                Row(children: [
                  albumContainer("assets/images/fourth.jpg", "Rap Gangs"),
                  albumContainer("assets/images/second.jpg", "Blessed"),
                ]),
                Row(children: [
                  albumContainer("assets/images/peli.jpg", "Hip Hop Now"),
                  albumContainer("assets/images/fifth.jpg", "Rap"),
                ]),
                Row(children: [
                  albumContainer("assets/images/eightth.jpg", "Curato"),
                  albumContainer("assets/images/sixth.jpg", "Serian"),
                ]),
                Row(children: [
                  albumContainer("assets/images/seventh.jpg", "Despacito"),
                  albumContainer("assets/images/fourth.jpg", "Believe"),
                ]),




              ],
            ),
          )),
    );
  }
}

Widget albumContainer(imgPath, text) {
  return Stack(children: [
    Expanded(
      child: Container(
        margin: EdgeInsets.fromLTRB(8, 5, 2, 5),
        child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
          ),
          child: Image.asset(
            imgPath,
          ),
        ),
        height: 90,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.transparent),
        width: 150,
      ),
    ),
    Container(
        alignment: Alignment.bottomLeft,
        margin: EdgeInsets.only(top: 75, bottom: 10, left: 30),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontFamily: "Medium", fontSize: 12, color: Colors.white),
          ),
        )),
    Container(
      margin: EdgeInsets.fromLTRB(20, 15, 0, 0),
      child: Icon(Icons.play_circle_outline_outlined,color: Colors.white,),
    )
  ]);
}

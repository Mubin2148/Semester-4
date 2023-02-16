import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music_player/home_page.dart';
import 'package:music_player/all_page.dart';
import 'package:music_player/music_playing.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromRGBO(17, 20, 39, 1),
          appBar: AppBar(
            leading: InkWell(
                onTap: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AllPage(),)),
                    },
                child: Icon(Icons.arrow_back)),
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
                  albumContainer("assets/images/fourth.jpg", "Rap Gangs",context),
                  albumContainer("assets/images/second.jpg", "Rap Party",context),
                ]),
                Row(children: [
                  albumContainer("assets/images/peli.jpg", "Hip Hop Now",context),
                  albumContainer("assets/images/fifth.jpg", "Rap Dizz",context),
                ]),
                Row(children: [
                  albumContainer(
                      "assets/images/eightth.jpg", "Beats and Rhythms",context),
                  albumContainer("assets/images/sixth.jpg", "Rap Dizz",context),
                ]),
                Row(children: [
                  albumContainer("assets/images/seventh.jpg", "Blessed",context),
                  albumContainer("assets/images/third.jpg", "Hurrah",context),
                ]),
                Row(children: [
                  albumContainer("assets/images/fourth.jpg", "Blah",context),
                  albumContainer("assets/images/second.jpg", "Blessed",context),
                ]),
                Row(children: [
                  albumContainer("assets/images/peli.jpg", " ",context),
                  albumContainer("assets/images/fifth.jpg", "Gutano",context),
                ]),
                Row(children: [
                  albumContainer("assets/images/eightth.jpg", "Ourato",context),
                  albumContainer("assets/images/sixth.jpg", " ",context),
                ]),
                Row(children: [
                  albumContainer("assets/images/seventh.jpg", "Derito",context),
                  albumContainer("assets/images/peli.jpg", "Dizz",context),
                ]),
                Row(children: [
                  albumContainer("assets/images/fourth.jpg", "Rap Gangs",context),
                  albumContainer("assets/images/second.jpg", "Blessed",context),
                ]),
                Row(children: [
                  albumContainer("assets/images/peli.jpg", "Hip Hop Now",context),
                  albumContainer("assets/images/fifth.jpg", "Rap",context),
                ]),
                Row(children: [
                  albumContainer("assets/images/eightth.jpg", "Curato",context),
                  albumContainer("assets/images/sixth.jpg", "Serian",context),
                ]),
                Row(children: [
                  albumContainer("assets/images/seventh.jpg", "Despacito",context),
                  albumContainer("assets/images/fourth.jpg", "Believe",context),
                ]),
                Row(children: [
                  albumContainer("assets/images/fourth.jpg", "Rap Gangs",context),
                  albumContainer("assets/images/second.jpg", "Rap Party",context),
                ]),
                Row(children: [
                  albumContainer("assets/images/peli.jpg", "Hip Hop Now",context),
                  albumContainer("assets/images/fifth.jpg", "Rap Dizz",context),
                ]),
                Row(children: [
                  albumContainer(
                      "assets/images/eightth.jpg", "Beats and Rhythms",context),
                  albumContainer("assets/images/sixth.jpg", "Rap Dizz",context),
                ]),
                Row(children: [
                  albumContainer("assets/images/seventh.jpg", "Blessed",context),
                  albumContainer("assets/images/third.jpg", "Hurrah",context),
                ]),
                Row(children: [
                  albumContainer("assets/images/fourth.jpg", "Blah",context),
                  albumContainer("assets/images/second.jpg", "Blessed",context),
                ]),
              ],
            ),
          )),
    );
  }
}

Widget albumContainer(imgPath, text,context) {
  return InkWell(
    splashColor: Colors.white,
    onTap: () => {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const Playing()))
    },
    child: Stack(children: [
      Container(
        margin: EdgeInsets.fromLTRB(8, 5, 2, 5),
        child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
          child: Image.asset(
            imgPath,
            fit: BoxFit.cover,
          ),
        ),
        height: 115,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.transparent),
        width: 160,
      ),
      Container(
          alignment: Alignment.bottomLeft,
          margin: EdgeInsets.only(top: 93, bottom: 10, left: 24),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontFamily: "Medium", fontSize: 12, color: Colors.white),
            ),
          )),
      Container(
        margin: EdgeInsets.fromLTRB(20, 15, 0, 0),
        child: Icon(
          Icons.play_circle_outline_outlined,
          color: Colors.white,
        ),
      )
    ]),
  );
}

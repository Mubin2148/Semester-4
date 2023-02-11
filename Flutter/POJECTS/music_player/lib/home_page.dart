import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(17, 20, 39, 1),
        body: Column(
          children: [
            Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Find Your Best Music",
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontFamily: "Kanit",
                  ),
                ),
                margin: EdgeInsets.fromLTRB(13, 23, 0, 15)),
            Container(
              margin: EdgeInsets.fromLTRB(13, 0, 13, 0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey,
                  prefixIcon: Icon(Icons.search, color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  hintText: ' Search',
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                    child: Text(
                      "New Albums",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Kanit"),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 15, 15, 0),
                    child: Text(
                      "View all",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontFamily: "Kanit"),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        albumContainer("assets/images/peli.jpg", " ", 7),
                        albumContainer("assets/images/second.jpg", " ", 7),
                        albumContainer("assets/images/third.jpg", " ", 7),
                        albumContainer("assets/images/fourth.jpg", " ", 7),
                        albumContainer("assets/images/fifth.jpg", " ", 7),
                        albumContainer("assets/images/sixth.jpg", " ", 7),
                        albumContainer("assets/images/seventh.jpg", " ", 7),
                        albumContainer("assets/images/eightth.jpg", " ", 7),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Recently Music",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: "Kanit"),
                    ),
                  ),
                  recentMusic("assets/images/fourth.jpg", "Havana",
                      "Camilla Cabello", "01"),
                  recentMusic("assets/images/eightth.jpg", "Techno Music",
                      "Essentiel Mix", "02"),
                  recentMusic("assets/images/sixth.jpg", "Stargrows",
                      "ittile Iselands", "03"),
                  recentMusic(
                      "assets/images/peli.jpg", "Orion", "Volta Music", "04"),
                  recentMusic("assets/images/third.jpg",
                      "Everything is Blessed", "Emilla Dine", "05"),
                  recentMusic("assets/images/fifth.jpg", "Tukajo",
                      "Redani Diana", "06"),
                  recentMusic(
                      "assets/images/second.jpg", "Cristiano", "Ronaldo", "07"),
                  recentMusic(
                      "assets/images/seventh.jpg", "Seranvika", "Grapes", "08"),
                  recentMusic(
                      "assets/images/fourth.jpg", "Dragons", "Fullilo", "09"),
                  recentMusic(
                      "assets/images/sixth.jpg", "Hersiye", "lions", "10"),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}

Widget albumContainer(imgPath, text, n) {
  return Stack(children: [
    Container(
      margin: EdgeInsets.all(5),
      child: Image.asset(
        imgPath,
      ),
      height: 75,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      width: 100,
    ),
    Container(
        alignment: Alignment.bottomLeft,
        margin: EdgeInsets.only(top: 50, bottom: 10, left: 20),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontFamily: "Bold", fontSize: 12, color: Colors.white),
          ),
        ))
  ]);
}

Widget recentMusic(imgPath, text1, text2, n) {
  return Row(
    children: [
      Container(
          margin: EdgeInsets.only(left: 3,right: 0),
          child: Center(
              child: Text(
            n,
            style: TextStyle(fontSize: 15, color: Colors.white70),
          ))),
      Expanded(
        child: ListTile(
          leading: Container(
            child: Image.asset(
              imgPath,
              height: 42,
              width: 42,
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          ),
          title: Text(
            text1,
            style: TextStyle(color: Colors.white, fontFamily: "Medium"),
          ),
          subtitle: Text(
            text2,
            style: TextStyle(color: Colors.grey, fontSize: 11),
          ),
          onTap: () => {
            Size.fromHeight(20),
          },
          trailing: Icon(Icons.more_horiz,color: Colors.white,),
          // leading: CircleAvatar(backgroundImage: AssetImage('assets/images/Home/FastWorkout.png'),),
        ),
      ),
    ],
  );
}

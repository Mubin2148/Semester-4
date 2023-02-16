import 'package:flutter/material.dart';
import 'package:music_player/music_playing.dart';

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
                  fillColor: Colors.grey.shade700,
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
                        albumContainer("assets/images/peli.jpg",context),
                        albumContainer("assets/images/second.jpg",context),
                        albumContainer("assets/images/third.jpg",context),
                        albumContainer("assets/images/fourth.jpg",context),
                        albumContainer("assets/images/fifth.jpg",context),
                        albumContainer("assets/images/sixth.jpg",context),
                        albumContainer("assets/images/seventh.jpg",context),
                        albumContainer("assets/images/eightth.jpg",context),
                        albumContainer("assets/images/peli.jpg",context),
                        albumContainer("assets/images/second.jpg",context),
                        albumContainer("assets/images/fourth.jpg",context),
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
                      "Camilla Cabello", "01",context),
                  recentMusic("assets/images/eightth.jpg", "Techno Music",
                      "Essentiel Mix", "02",context),
                  recentMusic("assets/images/sixth.jpg", "Stargrows",
                      "ittile Iselands", "03",context),
                  recentMusic(
                      "assets/images/peli.jpg", "Orion", "Volta Music", "04",context),
                  recentMusic("assets/images/third.jpg",
                      "Everything is Blessed", "Emilla Dine", "05",context),
                  recentMusic("assets/images/fifth.jpg", "Tukajo",
                      "Redani Diana", "06",context),
                  recentMusic(
                      "assets/images/second.jpg", "Cristiano", "Ronaldo", "07",context),
                  recentMusic(
                      "assets/images/seventh.jpg", "Seranvika", "Grapes", "08",context),
                  recentMusic(
                      "assets/images/fourth.jpg", "Dragons", "Fullilo", "09",context),
                  recentMusic(
                      "assets/images/sixth.jpg", "Hersiye", "lions", "10",context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget albumContainer(imgPath,context) {
  return InkWell(
    onTap: () => {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const Playing()))
    },
    child: Stack(children: [
      Container(
        margin: EdgeInsets.all(5),
        child: Image.asset(
          imgPath,
          fit: BoxFit.cover,
        ),
        clipBehavior: Clip.antiAlias,
        height: 85,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        width: 120,
      ),
    ]),
  );
}

Widget recentMusic(imgPath, text1, text2, n,context) {
  return Row(
    children: [
      Container(
          margin: EdgeInsets.only(left: 3, right: 0),
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
          trailing: Icon(
            Icons.more_horiz,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}

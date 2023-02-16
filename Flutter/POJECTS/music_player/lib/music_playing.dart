import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_player/all_page.dart';

class Playing extends StatefulWidget {
  const Playing({Key? key}) : super(key: key);

  @override
  State<Playing> createState() => _PlayingState();
}

class _PlayingState extends State<Playing> {
  double _currentSliderValue = 60;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Expanded(
                child: Image.asset(
              "assets/images/music.jpg",
              fit: BoxFit.cover,
            )),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 14, left: 6),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AllPage(),
                                    )),
                              },
                          child: Icon(Icons.arrow_back, color: Colors.white)),
                      Container(
                        margin: EdgeInsets.only(left: 220),
                        child: Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Icon(
                            FontAwesomeIcons.heart,
                            color: Colors.white,
                            size: 20,
                          )),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 315),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.shuffle,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 47),
                        child: Icon(
                          Icons.skip_previous,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 47),
                        child: Icon(Icons.play_circle,
                            color: Colors.white, size: 45),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 47),
                        child: Icon(Icons.skip_next_rounded,
                            color: Colors.white, size: 30),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 42),
                        child: Icon(Icons.repeat_rounded,
                            color: Colors.white, size: 30),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16, left: 10),
                  child: Row(
                    children: [
                      Text(
                        "Everything is Blessed",
                        style: TextStyle(
                            fontFamily: "Bold",
                            fontSize: 23,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 7, left: 10),
                  child: Row(
                    children: [
                      Text(
                        "Joepraize",
                        style: TextStyle(
                            fontFamily: "Kanit",
                            fontSize: 15,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Slider(
                    activeColor: Colors.red,
                    value: _currentSliderValue,
                    max: 100,
                    divisions: 100,
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 8, left: 10),
                        child: Row(
                          children: [
                            Text(
                              "Playlist",
                              style: TextStyle(
                                  fontFamily: ""
                                      "Medium",
                                  fontSize: 19,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      recentMusic("assets/images/fourth.jpg", "Havana",
                          "Camilla Cabello", "01"),
                      recentMusic("assets/images/eightth.jpg", "Techno Music",
                          "Essentiel Mix", "02"),
                      recentMusic("assets/images/sixth.jpg", "Stargrows",
                          "ittile Iselands", "03"),
                      recentMusic("assets/images/peli.jpg", "Orion",
                          "Volta Music", "04"),
                      recentMusic("assets/images/third.jpg",
                          "Everything is Blessed", "Emilla Dine", "05"),
                      recentMusic("assets/images/fifth.jpg", "Tukajo",
                          "Redani Diana", "06"),
                      recentMusic("assets/images/second.jpg", "Cristiano",
                          "Ronaldo", "07"),
                      recentMusic("assets/images/seventh.jpg", "Seranvika",
                          "Grapes", "08"),
                      recentMusic("assets/images/fourth.jpg", "Dragons",
                          "Fullilo", "09"),
                      recentMusic(
                          "assets/images/sixth.jpg", "Hersiye", "lions", "10")
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget recentMusic(imgPath, text1, text2, n) {
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
          // leading: CircleAvatar(backgroundImage: AssetImage('assets/images/Home/FastWorkout.png'),),
        ),
      ),
    ],
  );
}

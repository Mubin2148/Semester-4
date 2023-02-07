import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        color: Colors.white, fontSize: 20, fontFamily: "Kanit"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 15, 15, 0),
                  child: Text(
                    "View all",
                    style: TextStyle(
                        color: Colors.grey, fontSize: 14, fontFamily: "Kanit"),
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
                      albumContainer("assets/images/peli.jpg", "text", 7),
                      albumContainer("assets/images/second.jpg", "text", 7),
                      albumContainer("assets/images/third.jpg", "text", 7),
                      albumContainer("assets/images/fourth.jpg", "text", 7),
                      albumContainer("assets/images/fifth.jpg", "text", 7),
                      albumContainer("assets/images/sixth.jpg", "text", 7),
                      albumContainer("assets/images/seventh.jpg", "text", 7),
                      albumContainer("assets/images/eightth.jpg", "text", 7),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Recently Music",
                    style: TextStyle(
                        color: Colors.white, fontSize: 25, fontFamily: "Kanit"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Color.fromRGBO(44, 49, 69, 1),
        backgroundColor: Color.fromRGBO(26, 31, 60, 1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.grey,
            icon: Icon(Icons.area_chart),
            label: 'Trend',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

Widget albumContainer(imgPath, text, n) {
  return Stack(children: [
    Container(
      margin: EdgeInsets.all(5),
      child: Image.asset(imgPath),
      height: 75,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      width: 100,
    ),
  ]);
}

Widget recentMusic(imgPath, text, n) {
  return Row(
    children: [
      Text(n),
      Image.asset(imgPath),
      Text(text)
    ],
  );
}

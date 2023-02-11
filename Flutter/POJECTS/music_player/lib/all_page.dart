import 'package:flutter/material.dart';
import 'package:music_player/chat.dart';
import 'package:music_player/explore.dart';
import 'package:music_player/home_page.dart';
import 'package:music_player/profile.dart';
import 'package:music_player/trend.dart';

class AllPage extends StatefulWidget {
  const AllPage({Key? key}) : super(key: key);

  @override
  State<AllPage> createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {
  int selectedindex = 0;
  List<Widget> widgetslist = const [
    HomePage(),
    ExplorePage(),
    TrendPage(),
    ChatPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(17, 20, 39, 1),
        body: widgetslist[selectedindex],
        bottomNavigationBar: ClipRRect(
          child: BottomNavigationBar(
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
            currentIndex: selectedindex,
            onTap: (index) {
              setState(() {
                selectedindex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}

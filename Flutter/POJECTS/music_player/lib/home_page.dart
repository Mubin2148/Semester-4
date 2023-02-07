import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF444444),
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
                fillColor: Color(0xFF9ea5b0),
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
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(13, 11, 0, 5),
                child: Text(
                  "New Albums",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "Kanit"
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(830, 11, 7, 5),
                child: Text(
                  "View all",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontFamily: "Kanit"
                  ),
                ),
              )
            ],
          )

          // Expanded(
          //   child: ListView(
          //     children: [
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.red,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.green,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.blue,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.red,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.green,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.blue,
          //       ), Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.red,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.green,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.blue,
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        backgroundColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
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
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
        ],
      ),
    );
  }
}

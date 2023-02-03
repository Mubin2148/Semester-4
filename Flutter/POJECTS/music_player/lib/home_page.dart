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
              margin: EdgeInsets.fromLTRB(10, 27, 0, 15)),
          TextField(
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

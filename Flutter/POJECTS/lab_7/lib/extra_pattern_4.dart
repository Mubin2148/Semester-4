import 'package:flutter/material.dart';

class Pattern4 extends StatelessWidget {
  const Pattern4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Expanded(
            flex:3,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(child: Container(color: Colors.brown,margin: EdgeInsets.all(5.0),)),
                      Expanded(child: Container(color: Colors.pink,margin: EdgeInsets.all(5.0),))
                    ],
                  ),
                ),
                Expanded(
                  flex:2,
                  child: Container(
                    color: Colors.teal,margin: EdgeInsets.all(5.0),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.amber,margin: EdgeInsets.all(5.0),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.indigo,margin: EdgeInsets.all(5.0),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.greenAccent,margin: EdgeInsets.all(5.0),
                        ),
                      ),
                    ],
                  )
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.lime,margin: EdgeInsets.all(5.0),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,margin: EdgeInsets.all(5.0),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,margin: EdgeInsets.all(5.0),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.black38,margin: EdgeInsets.all(5.0),
                  ),
                ),

              ],
            ),
          )
        ],
      )
    );
  }
}

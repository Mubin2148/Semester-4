import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Container()),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child:
                Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 20.0),
                            child: Text(
                              "Enter user name",
                              style: TextStyle(fontSize: 20, color: Colors.black),
                            )),
                        TextFormField(
                          style: TextStyle(color: Colors.black,fontSize: 15),),
                        Container(
                            margin: EdgeInsets.only(top: 20.0),
                            child: Text(
                              "Enter password",
                              style: TextStyle(fontSize: 20, color: Colors.black),
                            )),
                        TextFormField(style: TextStyle(color: Colors.black,fontSize: 15),)
                      ],
                    ),
                  ),
                ),


            ),
            flex: 2,
          ),
          Expanded(child: Container())
        ],
      ),
    );
  }
}

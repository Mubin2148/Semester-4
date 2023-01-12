import 'package:flutter/material.dart';
import 'package:matrimony/custom_text_widget.dart';
import 'package:matrimony/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Metromony HomePage"),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                "images/image.jpg",
                fit: BoxFit.cover,
              ),
              Container(
                color: Colors.white54,
              ),
              Container(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Image.asset(
                      "images/logo.png",
                      width: 300,
                    ),
                  ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: BoldText(
                  text: "INDIA'S \n MOST TRUSTED \n MATRIMONY BRAND",
                  size: 22.0,
                  color: Colors.black,
                  bgColor: Colors.transparent,
                  textAlign: TextAlign.center,
                ),
              )],
              ))
            ],
          )),
          Row(
            children: [
              Expanded(
                  child: InkWell(
                    onTap: () => {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        return LoginPage();
                      },))
                    },
                    child: Container(
                padding: EdgeInsets.all(15),
                color: Colors.black,
                child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                ),
              ),
                  )),
              Expanded(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    color: Colors.green,
                    child: const Center(
                      child: Text(
                        "Sign Up \u2794",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}

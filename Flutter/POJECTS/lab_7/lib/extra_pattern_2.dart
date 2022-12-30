import 'package:flutter/material.dart';

class Pattern2 extends StatelessWidget {
  const Pattern2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [Expanded(
              child: Container(
                color: Colors.deepPurple,
              ),
            )],
          )),
          Expanded(
              child: Row(
                children: [Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  color: Colors.purple,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  color: Colors.lightGreenAccent,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )],
              )),
          Expanded(
              child: Row(
                children: [Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.amber,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.black38,
                          ),
                        ),
                      ],
                    ),
                  )],
              ))
        ],
      ),
    );
  }
}

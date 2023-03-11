import 'dart:convert';
import 'package:api_evaluation/get_all.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddEditPage extends StatefulWidget {
  AddEditPage({Key? key, this.user}) : super(key: key);
  dynamic user;

  @override
  State<AddEditPage> createState() => _AddEditPageState();
}

class _AddEditPageState extends State<AddEditPage> {
  var id;

  void initState() {
    if (widget.user != null) {
      id = widget.user["id"];
    }
    nameController = TextEditingController(
        text: widget.user != null ? widget.user["name"] : "");
    salaryController = TextEditingController(
        text: widget.user != null ? widget.user["salary"] : "");
  }
  Map<String, String> mp = {};
  TextEditingController nameController = TextEditingController();
  TextEditingController salaryController = TextEditingController();

  Future<void> addInApi(Map<dynamic,dynamic> map) async {
    http.Response res = await http.post(
      Uri.parse("https://640c1245a3e07380e8ec5610.mockapi.io/Employee"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(map),
    );
  }

  Future<void> updateInApi(Map<dynamic, dynamic> map, {id}) async {
    map["id"] = id;
    print(map);
    http.Response res = await http.put(
      Uri.parse("https://640c1245a3e07380e8ec5610.mockapi.io/Employee/$id"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(map),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("add edit page"),),
        body: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Enter name"),
            ),
            TextFormField(
              controller: salaryController,
              decoration: InputDecoration(labelText: "Enter salary"),
            ),
            TextButton(
                onPressed: () {
                  Map<String,Object?> mp = {};
                  mp["name"] = nameController.text;
                  mp["salary"] = int.parse(salaryController.text);
                  if (widget.user != null) {
                    mp["id"] = widget.user!["id"];
                    updateInApi(mp,id: mp["id"]);

                  } else {
                    addInApi(mp);
                  }
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => GetAll()));
                },
                child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}

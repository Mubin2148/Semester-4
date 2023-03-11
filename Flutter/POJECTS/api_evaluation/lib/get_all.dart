import 'dart:convert';
import 'package:api_evaluation/add_edit_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetAll extends StatefulWidget {
  const GetAll({Key? key}) : super(key: key);

  @override
  State<GetAll> createState() => GetAllState();
}

class GetAllState extends State<GetAll> {
  Future<dynamic> getAll() async {
    http.Response res = await http.get(
      Uri.parse("https://640c1245a3e07380e8ec5610.mockapi.io/Employee"),
    );
    return res.body;
  }

  Future<void> deleteById(id) async {
    final http.Response res = await http.delete(
      Uri.parse("https://640c1245a3e07380e8ec5610.mockapi.io/Employee/$id"),
    );
  }

  List<Widget> getList(lst) {
    List<Widget> list = [];
    for (int i = 0; i < lst.length; i++) {
      list.add(Card(
          elevation: 7,
          child: ListTile(
            leading: Text(i.toString()),
            title: Text(lst[i]["name"].toString()),
            subtitle: Text(lst[i]["salary"].toString()),
            trailing: Container(
              width: 50,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Map map = lst[i];
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AddEditPage(user: map,)));
                      print(map.runtimeType);
                    },
                    child: Icon(Icons.edit),
                  ),
                  InkWell(
                      onTap: () {
                        deleteById(lst[i]["id"]);
                        setState(() {});
                      },
                      child: Icon(Icons.delete))
                ],
              ),
            ),
          )));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Get All "),
          actions: [InkWell(
            onTap:() {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AddEditPage(user: null,)));
            },
            child: Icon(Icons.add),
          )],
        ),
        body: FutureBuilder(
          future: getAll(),
          builder: (context, snapshot) {
            if (snapshot.data != null && snapshot.hasData) {
              List<dynamic> lst = jsonDecode(snapshot.data.toString());
              return ListView(
                children: getList(lst),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(color: Colors.grey),
              );
            }
          },
        ),
      ),
    );
  }
}

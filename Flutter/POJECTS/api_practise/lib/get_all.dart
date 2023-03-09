import 'dart:convert';
import 'package:api_practise/detail_page.dart';
import 'package:api_practise/edit_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetAll extends StatefulWidget {
  const GetAll({Key? key}) : super(key: key);

  @override
  State<GetAll> createState() => _GetAllState();
}

class _GetAllState extends State<GetAll> {
  Future<dynamic> getAllFaculty() async {
    http.Response res = await http.get(
      Uri.parse("https://630c645f83986f74a7bf23bb.mockapi.io/Faculties"),
    );
    return res.body;
  }

  List<Widget> getList(lst) {
    List<Widget> list = [];
    for (int i = 0; i < lst.length; ) {
      list.add(Card(
          elevation: 7,
          child: InkWell(
            onTap: () {
              Map user = lst[i];
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(map: user),
                ),
              );
            },
            child: ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.network(lst[i]["picture"].toString()),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey.shade200,
              ),

              subtitle: Text(lst[i]["email"].toString()),
              title: Text(
                lst[i]["name"].toString(),
              ),
            ),
          )));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => EditPage(),
              ));
            },
            child: Container(
              margin: EdgeInsets.only(right: 10),
              child: Icon(Icons.add),
            ),
          ),
        ],
        title: Text("Get All"),
        backgroundColor: Colors.blue,
      ),
      body: FutureBuilder(
        future: getAllFaculty(),
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
    );
  }
}

// import 'package:db_practise/database.dart';
// import 'package:flutter/material.dart';
// import 'package:path/path.dart';
//
// class GetAll extends StatefulWidget {
//   const GetAll({Key? key}) : super(key: key);
//
//   @override
//   State<GetAll> createState() => _GetAllState();
// }
//
// class _GetAllState extends State<GetAll> {
//   @override
//   void initState(){
//     super.initState();
//     MyDatabase().copyPasteAssetFileToRoot().then((value) {
//       print("Database initialised successfully");
//     });
//     MyDatabase().getData();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold (
//       appBar: AppBar(
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text("Database"),
//             InkWell(
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => Scaffold()));
//                 },
//                 child: Icon(Icons.add))
//           ],
//         ),
//       ),
//       body: FutureBuilder(
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return ListView(
//               children: getTiles(list: snapshot.data),
//             );
//           } else {
//             return Center(child: CircularProgressIndicator());
//           }
//         },
//         future: MyDatabase().getData() ,
//       ),
//     );
//   }
//
//   List<Widget> getTiles({list}) {
//     List<Widget> lst = [];
//     for (int i = 0; i < list.length; i++) {
//       lst.add(
//         Card(
//           child: ListTile(
//             title: Text(list[i]["Name"]),
//             subtitle: Text(list[i]["Salary"].toString()),
//             trailing: Container(
//               width: 50,
//               child: Row(
//                 children: [
//                   InkWell(
//                     child: Icon(Icons.edit),
//                     onTap: () {
//                       Navigator.push(context as BuildContext,
//                           MaterialPageRoute(builder: (context) => Container()));
//                     },
//                   ),
//                   InkWell(
//                     child: Icon(Icons.delete),
//                     // onTap: () {
//                     //   MyDatabase().deleteById(list[i]["id"]);
//                     //   setState(() {});
//                     // },
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       );
//     }
//     return lst;
//   }
// }
import 'package:db_practise/add_edit_page_db.dart';
import 'package:db_practise/database.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class EmployeesDB extends StatefulWidget {
  const EmployeesDB({Key? key}) : super(key: key);

  @override
  State<EmployeesDB> createState() => _EmployeesDBState();
}

class _EmployeesDBState extends State<EmployeesDB> {
  @override
  void initState() {
    super.initState();
    MyDatabase().copyPasteAssetFileToRoot().then((value) {
      print("Database initialised successfully");
    });
    MyDatabase().getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Database"),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddEditPageDB(data:null)));
                },
                child: Icon(Icons.add))
          ],
        ),
      ),
      body: FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.data != null && snapshot.hasData) {
            return ListView(
              children: getTiles(list: snapshot.data),
            );
          } else {
            return CircularProgressIndicator();
          }
        },
        future: MyDatabase().getData(),
      ),
    );
  }

  List<Widget> getTiles({list}) {
    List<Widget> lst = [];
    for (int i = 0; i < list.length; i++) {
      lst.add(
        Card(
          child: ListTile(
            title: Text(list[i]["Name"]),
            subtitle: Text(list[i]["Salary"].toString()),
            trailing: Container(
              width: 50,
              child: Row(
                children: [
                  InkWell(
                    child: Icon(Icons.edit),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AddEditPageDB(data:list[i])));
                    },
                  ),
                  InkWell(
                    child: Icon(Icons.delete),
                    onTap: () {
                      MyDatabase().deleteById(list[i]["id"]);
                      setState(() {});
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }
    return lst;
  }
}


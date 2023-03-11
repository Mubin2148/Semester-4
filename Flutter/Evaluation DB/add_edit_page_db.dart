import 'package:employee_project/database/employees_db.dart';
import 'package:employee_project/database/my_database.dart';
import 'package:flutter/material.dart';

class AddEditPageDB extends StatefulWidget {
  AddEditPageDB({Key? key, this.data}) : super(key: key);
  dynamic data;

  @override
  State<AddEditPageDB> createState() => _AddEditPageDBState();
}

class _AddEditPageDBState extends State<AddEditPageDB> {
  @override
  void initState() {
    super.initState();
    if (widget.data != null) {
      _nc.text = widget.data!["Name"].toString();
      _sc.text = widget.data!["Salary"].toString();
    }
  }

  TextEditingController _nc = TextEditingController();
  TextEditingController _sc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add edit page"),
      ),
      body: Column(
        children: [
          TextFormField(
              controller: _nc,
              decoration: InputDecoration(labelText: "Enter Name")),
          TextFormField(
              controller: _sc,
              decoration: InputDecoration(labelText: "Enter Salary")),
          TextButton(
              onPressed: () {
                Map<String,Object?> map = {};
                map["Name"] = _nc.text;
                map["Salary"] = int.parse(_sc.text);
                if (widget.data != null) {
                  map["id"] = widget.data!["id"];
                  MyDatabase().deleteById(int.parse(map["id"].toString()));
                  MyDatabase().add(map: map);
                } else {
                  MyDatabase().add(map: map);
                }
                Navigator.of(context)
                  ..pop()
                  ..pushReplacement(
                      MaterialPageRoute(builder: (context) => EmployeesDB()));
              },
              child: Text("Submit"))
        ],
      ),
    );
  }
}

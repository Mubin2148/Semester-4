import 'dart:convert';
import 'package:api_practise/detail_page.dart';
import 'package:api_practise/get_all.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EditPage extends StatefulWidget {
  EditPage({Key? key, this.userModel}) : super(key: key);
  dynamic userModel;

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  var id;

  void initState() {
    if (widget.userModel != null) {
      id = widget.userModel["id"].toString();
    }
    nameController = TextEditingController(
        text: widget.userModel != null
            ? widget.userModel["name"].toString()
            : "");
    imageController = TextEditingController(
        text: widget.userModel != null
            ? widget.userModel["picture"].toString()
            : "");
    emailController = TextEditingController(
        text: widget.userModel != null
            ? widget.userModel["email"].toString()
            : "");
    cityController = TextEditingController(
        text: widget.userModel != null
            ? widget.userModel["city"].toString()
            : "");
    pincodeController = TextEditingController(
        text: widget.userModel != null
            ? widget.userModel["pincode"].toString()
            : "");
    phoneNumberController = TextEditingController(
        text: widget.userModel != null
            ? widget.userModel["ContactNumbar"].toString()
            : "");
  }

  Map<String, String> map = {};
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  Future<void> addInApi(Map<String, String> map) async {
    http.Response res = await http.post(
      Uri.parse("https://630c645f83986f74a7bf23bb.mockapi.io/Faculties"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(map),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Detail"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        // color: Colors.deepOrangeAccent,
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "Enter Name"),
                    validator: (value) {
                      var passNonNullValue = value ?? "";
                      if (passNonNullValue.isEmpty) {
                        return ("Password is required");
                      }
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: TextFormField(
                    controller: imageController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Enter image url"),
                    validator: (value) {
                      var passNonNullValue = value ?? "";
                      if (passNonNullValue.isEmpty) {
                        return ("Password is required");
                      }
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "Enter email"),
                    validator: (value) {
                      var passNonNullValue = value ?? "";
                      if (passNonNullValue.isEmpty) {
                        return ("Password is required");
                      }
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: TextFormField(
                    controller: cityController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "Enter city"),
                    validator: (value) {
                      var passNonNullValue = value ?? "";
                      if (passNonNullValue.isEmpty) {
                        return ("Password is required");
                      }
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: TextFormField(
                    controller: pincodeController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Enter pincode"),
                    validator: (value) {
                      var passNonNullValue = value ?? "";
                      if (passNonNullValue.isEmpty) {
                        return ("Password is required");
                      }
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: TextFormField(
                    controller: phoneNumberController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Enter Phone Number"),
                    validator: (value) {
                      var passNonNullValue = value ?? "";
                      if (passNonNullValue.isEmpty) {
                        return ("Password is required");
                      }
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 150),
                  child: TextButton(
                    onPressed: () =>
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              AlertDialog(
                                content: const Text('Confirmation'),
                                title: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Confirm Changes??",
                                    ),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        map["name"] =
                                            nameController.text.toString();
                                        map["picture"] =
                                            imageController.text.toString();
                                        map["email"] =
                                            emailController.text.toString();
                                        map["city"] =
                                            cityController.text.toString();
                                        map["phoneNumber"] =
                                            phoneNumberController.text
                                                .toString();
                                        map["pincode"] =
                                            pincodeController.text.toString();
                                        if (widget.userModel == null) {
                                          addInApi(map);
                                          Navigator.of(context)
                                            ..pop()..pop()
                                            ..pushReplacement(
                                              MaterialPageRoute<void>(
                                                builder: (
                                                    BuildContext context) =>
                                                    GetAll(
                                                    ),
                                              ),
                                            );
                                        } else {
                                          updateInApi(
                                            map,
                                            id: id.toString(),
                                          );
                                          Navigator.of(context)
                                            ..pop()..pop()
                                            ..pushReplacement(
                                              MaterialPageRoute<void>(
                                                builder: (
                                                    BuildContext context) =>
                                                    DetailsPage(
                                                      map: map,
                                                    ),
                                              ),
                                            );
                                        }
                                      }
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                        ),
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      backgroundColor: Colors.green,
                      minimumSize: Size(150, 50),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateInApi(Map<String, String> map, {id}) async {
    map["id"] = id.toString();
    print(map);
    http.Response res = await http.put(
      Uri.parse("https://630c645f83986f74a7bf23bb.mockapi.io/Faculties/$id"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(map),
    );
  }
}

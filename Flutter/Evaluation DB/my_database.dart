import 'dart:io';
import 'package:path/path.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class MyDatabase {
  Future<Database> initDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String databasePath = join(appDocDir.path, 'employees.db');
    return await openDatabase(
      databasePath,
      version: 2,
    );
  }

  Future<void> copyPasteAssetFileToRoot() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "employees.db");

    if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
      ByteData data =
      await rootBundle.load(join('assets/database', 'employees.db'));
      List<int> bytes =
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await new File(path).writeAsBytes(bytes);
    }
  }

  Future<void> getUsers() async {
    Database db = await initDatabase();
    dynamic res = await db.rawQuery(
        "Select * from Employees");
    print(res);
  }

  Future<dynamic> getData() async {
    Database db = await initDatabase();
    dynamic list =
    await db.rawQuery("Select * from Employees");
    getUsers();
    return list;
  }

  Future<void> deleteById(int id) async {
    Database db = await initDatabase();
    db.rawQuery("Delete from Employees where id = ${id}");
  }

  Future<void> add({required Map<String,Object?> map}) async{
    Database db = await initDatabase();
    db.insert("Employees",map!);
  }

}

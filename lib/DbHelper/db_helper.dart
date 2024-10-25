import 'package:demographic_information/Model/models.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io' as io;
import 'package:path/path.dart';

class DBHelper {
  static Database? _db;

  Future<Database?> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDatabase();
    return null;
  }

  initDatabase() async {
    io.Directory documentDirectory = await getApplicationCacheDirectory();
    String path = join(documentDirectory.path, 'demographic_information.db');
    var db = await openDatabase(path, version: 1, onCreate: _createDatabase);
    return db;
  }

  _createDatabase(Database db, int version) async {
    await db.execute(
        "CREATE TABLE mydemographicinformation(id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT NOT NULL,phonenumber TEXT NOT NULL,idnumber TEXT NOT NULL,monthlyincome TEXT NOT NULL,address TEXT NOT NULL,landmark TEXT NOT NULL,dateandtime TEXT NOT NULL)");

  }
  Future<TodoModel> insert(TodoModel todoModel)async{
    var dbClient = await db;
    await dbClient?.insert('mydemographicinformation', todoModel.toMap());
    return todoModel;
  }
  Future<List<TodoModel>> getDataList()async{
    await db;
    final List<Map<String, Object?>> QueryResult = await _db!.rawQuery('SELECT * FROM mydemographicinformation');
    return QueryResult.map((e)=> TodoModel.fromMap(e)).toList();
  }
  Future<int> delete(int id)async{
var dbClient = await db;
return await dbClient!.delete('mydemographicinformation', where: 'id = ?',whereArgs: [id]);
  }
  Future<int> update(TodoModel todoModel)async{
var dbClient = await db;
return await dbClient!.update('mydemographicinformation',todoModel.toMap(),where: 'id = ?',whereArgs: [todoModel.id]);
  }
//  Future<int>updateData(int id,String name,String phonenumber, String idnumber,String monthlyincome,String Address,String landmark)async{
//   final db = await DBHelper._db;
//   final data ={
//     'id':id,
//     'name':name,
//     'age':phonenumber,
//     'gender':idnumber,
//     'monthlyincome':monthlyincome,
//     'status':Address,
//     'landmark':landmark,
//     'createdAt':DateTime.now().toString(),
// };
// final result = await db!.update('data', data,where: "id = ?",whereArgs: [id]);
// return result;
// }
}

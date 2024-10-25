// ignore_for_file: public_member_api_docs, sort_constructors_first
class TodoModel {
  final int? id;
  final String name;
  final String phonenumber;
  final String idnumber;
  final String monthlyincome;
  final String address;
  final String Landmark;
  
  final String dateandtime;

  TodoModel({
    this.id,
    required this.name,
   required this.phonenumber,
  required this.idnumber,
   required this.monthlyincome,
    required this.address,
    required this.Landmark,
   
    required this.dateandtime,
  });
  TodoModel.fromMap(Map<String, dynamic> res)
      : id = res['id'],
        name = res['name'],
        phonenumber = res['phonenumber'],
        idnumber = res['idnumber'],
        monthlyincome = res['monthlyincome'],
        address = res['address'],
        Landmark = res['landmark'],
        dateandtime = res['dateandtime'];

  Map<String, Object?> toMap() {
    return {
      "id": id,
      "name": name,
      "phonenumber": phonenumber,
      "idnumber": idnumber,
      "monthlyincome": monthlyincome,
      "address": address,
      "landmark": Landmark,
      "dateandtime":DateTime.now().toString(),
    };
  }
}

// class SQLHelper {
//   static Future<void> createTables(sql.Database database) async {
//     await database.execute(
//         """CREATE TABLE data(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,firstname TEXT,lastname TEXT, landmark TEXT,phonenumber TEXT,idnumber TEXT,monthlyincome TEXT,address TEXT,createdAT TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP)""");
//   }

//   static Future<sql.Database> db() async {
//     return sql.openDatabase("demographic_name.db", version: 1,
//         onCreate: (sql.Database database, int version) async {
//       await createTables(database);
//     });
//   }

//   static Future<int> createData(
//       String firstname,
//       String lastname,
//       String landmark,
//       String phonenumber,
//       String idnumber,
//       String monthlyincome,
//       String address) async {
//     final db = await SQLHelper.db();
//     final data = {
//       'firstname': firstname,
//       'lastname': lastname,
//       'landmark': landmark,
//       'phonenumber': phonenumber,
//       'idnumber': idnumber,
//       'monthlyincome': monthlyincome,
//       'address': address
//     };
//     final Data = await db.insert('data', data,
//         conflictAlgorithm: sql.ConflictAlgorithm.replace);
//     return Data;
//   }

//   static Future<List<Map<String, dynamic>>> getData() async {
//     final db = await SQLHelper.db();
//     return db.query('data', orderBy: 'id');
//   }

//   static Future<List<Map<String, dynamic>>> getsingleData(int id) async {
//     final db = await SQLHelper.db();
//     return db.query('data', where: "id = ?", whereArgs: [id], limit: 1);
//   }

//   static Future<int> updateData(int id, String firstname, String lastname, String landmark, String phonenumber,
//       String idnumber, String monthlyincome,String address) async {
//     final db = await SQLHelper.db();
//     final data = {
//       'firstname': firstname,
//       'lastname': lastname,
//       'landmark': landmark,
//       'phonenumber': phonenumber,
//       'idnumber': idnumber,
//       'monthlyincome': monthlyincome,
//       'address': address,
//       'createdAt': DateTime.now().toString()
//     };
//     final result =
//         await db.update('data', data, where: "id = ?", whereArgs: [id]);
//     return result;
//   }

//   static Future<void> deleteData(int id) async {
//     final db = await SQLHelper.db();
//     try {
//       await db.delete('data', where: "id = ?", whereArgs: [id]);
//     } catch (e) {}
//   }
// }

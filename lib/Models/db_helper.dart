// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';

// class DatabaseHelper {
//   static final DatabaseHelper _instance = DatabaseHelper._internal();
//   factory DatabaseHelper() => _instance;
//   static Database? _database;

//   DatabaseHelper._internal();

//   Future<Database> get database async {
//     if (_database != null) return _database!;
//     _database = await _initDatabase();
//     return _database!;
//   }

//   Future<Database> _initDatabase() async {
//     final path = join(await getDatabasesPath(), 'items.db');
//     return await openDatabase(
//       path,
//       onCreate: (db, version) {
//         return db.execute(
//           'CREATE TABLE items(id INTEGER PRIMARY KEY, radiovalue TEXT, radiovalue1 TEXT, radiovalue2 TEXT, radiovalue3 TEXT, radiovalue4 TEXT, radiovalue5 TEXT, radiovalue6 TEXT, radiovalue7 TEXT, radiovalue8 TEXT, radiovalue9 TEXT, radiovalue10 TEXT, radiovalue11 TEXT, radiovalue12 TEXT, radiovalue13 TEXT, radiovalue14 TEXT, radiovalue15 TEXT, radiovalue16 TEXT, radiovalue17 TEXT, amount TEXT, amount1 TEXT, name TEXT, phone TEXT, idnumber TEXT, income TEXT, address TEXT, landmark TEXT, none1 TEXT, none2 TEXT, hyper1 TEXT, hyper2 TEXT, diabetes1 TEXT, diabetes2 TEXT, covid1 TEXT, covid2 TEXT, fall1 TEXT, fall2 TEXT, other TEXT, other1 TEXT, other2 TEXT, lids1 TEXT, lids2 TEXT, conjunctiva1 TEXT, conjunctiva2 TEXT, cornea1 TEXT, cornea2 TEXT, ac1 TEXT, ac2 TEXT, iris1 TEXT, iris2 TEXT, aided1 TEXT, aided2 TEXT, aided3 TEXT, pinhole1 TEXT, pinhole2 TEXT, pinhole3 TEXT, unaided1 TEXT, unaided2 TEXT, unaided3 TEXT, unaidednear TEXT, aidednear TEXT, addpower TEXT, nearvision TEXT, fp1 TEXT, fp2 TEXT, fp3 TEXT, sub1 TEXT, sub2 TEXT, sub3 TEXT, bcva1 TEXT, bcva2 TEXT, bcva3 TEXT, pay TEXT, pay1 TEXT, dateandtime TEXT)',
//         );
//       },
//       version: 1,
//     );
//   }

//   // Insert item
//   Future<void> insertItem(Item item) async {
//     final db = await database;
//     await db.insert('items', item.toMap(),);
//   }

//   // Get all items
//   Future<List<Item>> getItems() async {
//     final db = await database;
//     final maps = await db.query('items');
//     return List.generate(maps.length, (i) => Item.fromMap(maps[i]));
//   }

//   // Update item
//   Future<void> updateItem(Item item) async {
//     final db = await database;
//     await db
//         .update('items', item.toMap(), where: 'id = ?', whereArgs: [item.id]);
//   }

//   // Delete item
//   Future<void> deleteItem(int id) async {
//     final db = await database;
//     await db.delete('items', where: 'id = ?', whereArgs: [id]);
//   }
// }
// class Item {
//   int? id;
//   String radiovalue;
//   String radiovalue1;
//   String radiovalue2;
//   String radiovalue3;
//   String radiovalue4;
//   String radiovalue5;
//   String radiovalue6;
//   String radiovalue7;
//   String radiovalue8;
//   String radiovalue9;
//   String radiovalue10;
//   String radiovalue11;
//   String radiovalue12;
//   String radiovalue13;
//   String radiovalue14;
//   String radiovalue15;
//   String radiovalue16;
//   String radiovalue17;
//   String name;
//   String phone;
//   String idnumber;
//   String income;
//   String address;
//   String landmark;
//   String amount;
//   String amount1;
//   String none1;
//   String none2;
//   String hyper1;
//   String hyper2;
//   String diabetes1;
//   String diabetes2;
//   String covid1;
//   String covid2;
//   String fall1;
//   String fall2;
//   String other1;
//   String other2;
//   String lids1;
//   String lids2;
//   String conjunctiva1;
//   String conjunctiva2;
//   String cornea1;
//   String cornea2;
//   String ac1;
//   String ac2;
//   String iris1;
//   String iris2;
//   String aided1;
//   String aided2;
//   String aided3;
//   String pinhole1;
//   String pinhole2;
//   String pinhole3;
//   String unaided1;
//   String unaided2;
//   String unaided3;
//   String unaidednear;
//   String aidednear;
//   String addpower;
//   String nearvision;
//   String fp1;
//   String fp2;
//   String fp3;
//   String sub1;
//   String sub2;
//   String sub3;
//   String bcva1;
//   String bcva2;
//   String bcva3;
//   String other;
//   String pay;
//   String pay1;
//   String dateandtime;

//   Item({
//     this.id,
//     required this.radiovalue,
//     required this.radiovalue1,
//     required this.radiovalue2,
//     required this.radiovalue3,
//     required this.radiovalue4,
//     required this.radiovalue5,
//     required this.radiovalue6,
//     required this.radiovalue7,
//     required this.radiovalue8,
//     required this.radiovalue9,
//     required this.radiovalue10,
//     required this.radiovalue11,
//     required this.radiovalue12,
//     required this.radiovalue13,
//     required this.radiovalue14,
//     required this.radiovalue15,
//     required this.radiovalue16,
//     required this.radiovalue17,
//     required this.name,
//     required this.phone,
//     required this.idnumber,
//     required this.income,
//     required this.address,
//     required this.landmark,
//     required this.amount,
//     required this.amount1,
//     required this.none1,
//     required this.none2,
//     required this.hyper1,
//     required this.hyper2,
//     required this.diabetes1,
//     required this.diabetes2,
//     required this.covid1,
//     required this.covid2,
//     required this.fall1,
//     required this.fall2,
//     required this.other1,
//     required this.other2,
//     required this.lids1,
//     required this.lids2,
//     required this.conjunctiva1,
//     required this.conjunctiva2,
//     required this.cornea1,
//     required this.cornea2,
//     required this.ac1,
//     required this.ac2,
//     required this.iris1,
//     required this.iris2,
//     required this.aided1,
//     required this.aided2,
//     required this.aided3,
//     required this.pinhole1,
//     required this.pinhole2,
//     required this.pinhole3,
//     required this.unaided1,
//     required this.unaided2,
//     required this.unaided3,
//     required this.unaidednear,
//     required this.aidednear,
//     required this.addpower,
//     required this.nearvision,
//     required this.fp1,
//     required this.fp2,
//     required this.fp3,
//     required this.sub1,
//     required this.sub2,
//     required this.sub3,
//     required this.bcva1,
//     required this.bcva2,
//     required this.bcva3,
//     required this.other,
//     required this.pay,
//     required this.pay1,
//     required this.dateandtime,
//   });

//   // Convert an Item into a Map for the database
//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'radiovalue': radiovalue,
//       'radiovalue1': radiovalue1,
//       'radiovalue2': radiovalue2,
//       'radiovalue3': radiovalue3,
//       'radiovalue4': radiovalue4,
//       'radiovalue5': radiovalue5,
//       'radiovalue6': radiovalue6,
//       'radiovalue7': radiovalue7,
//       'radiovalue8': radiovalue8,
//       'radiovalue9': radiovalue9,
//       'radiovalue10': radiovalue10,
//       'radiovalue11': radiovalue11,
//       'radiovalue12': radiovalue12,
//       'radiovalue13': radiovalue13,
//       'radiovalue14': radiovalue14,
//       'radiovalue15': radiovalue15,
//       'radiovalue16': radiovalue16,
//       'radiovalue17': radiovalue17,
//       'name': name,
//       'phone': phone,
//       'idnumber': idnumber,
//       'income': income,
//       'address': address,
//       'landmark': landmark,
//       'amount': amount,
//       'amount1': amount1,
//       'none1': none1,
//       'none2': none2,
//       'hyper1': hyper1,
//       'hyper2': hyper2,
//       'diabetes1': diabetes1,
//       'diabetes2': diabetes2,
//       'covid1': covid1,
//       'covid2': covid2,
//       'fall1': fall1,
//       'fall2': fall2,
//       'other1': other1,
//       'other2': other2,
//       'lids1': lids1,
//       'lids2': lids2,
//       'conjunctiva1': conjunctiva1,
//       'conjunctiva2': conjunctiva2,
//       'cornea1': cornea1,
//       'cornea2': cornea2,
//       'ac1': ac1,
//       'ac2': ac2,
//       'iris1': iris1,
//       'iris2': iris2,
//       'aided1': aided1,
//       'aided2': aided2,
//       'aided3': aided3,
//       'pinhole1': pinhole1,
//       'pinhole2': pinhole2,
//       'pinhole3': pinhole3,
//       'unaided1': unaided1,
//       'unaided2': unaided2,
//       'unaided3': unaided3,
//       'unaidednear': unaidednear,
//       'aidednear': aidednear,
//       'addpower': addpower,
//       'nearvision': nearvision,
//       'fp1': fp1,
//       'fp2': fp2,
//       'fp3': fp3,
//       'sub1': sub1,
//       'sub2': sub2,
//       'sub3': sub3,
//       'bcva1': bcva1,
//       'bcva2': bcva2,
//       'bcva3': bcva3,
//       'other': other,
//       'pay': pay,
//       'pay1': pay1,
//       'dateandtime': DateTime.now().toString(),
//     };
//   }

//   // Convert a Map from the database to an Item
//   factory Item.fromMap(Map<String, dynamic> map) {
//     return Item(
//       id: map['id'],
//       radiovalue: map['radiovalue'],
//       radiovalue1: map['radiovalue1'],
//       radiovalue2: map['radiovalue2'],
//       radiovalue3: map['radiovalue3'],
//       radiovalue4: map['radiovalue4'],
//       radiovalue5: map['radiovalue5'],
//       radiovalue6: map['radiovalue6'],
//       radiovalue7: map['radiovalue7'],
//       radiovalue8: map['radiovalue8'],
//       radiovalue9: map['radiovalue9'],
//       radiovalue10: map['radiovalue10'],
//       radiovalue11: map['radiovalue11'],
//       radiovalue12: map['radiovalue12'],
//       radiovalue13: map['radiovalue13'],
//       radiovalue14: map['radiovalue14'],
//       radiovalue15: map['radiovalue15'],
//       radiovalue16: map['radiovalue16'],
//       radiovalue17: map['radiovalue17'],
//       name: map['name'],
//       phone: map['phone'],
//       idnumber: map['idnumber'],
//       income: map['income'],
//       address: map['address'],
//       landmark: map['landmark'],
//       amount: map['amount'],
//       amount1: map['amount1'],
//       none1: map['none1'],
//       none2: map['none2'],
//       hyper1: map['hyper1'],
//       hyper2: map['hyper2'],
//       diabetes1: map['diabetes1'],
//       diabetes2: map['diabetes2'],
//       covid1: map['covid1'],
//       covid2: map['covid2'],
//       fall1: map['fall1'],
//       fall2: map['fall2'],
//       other1: map['other1'],
//       other2: map['other2'],
//       lids1: map['lids1'],
//       lids2: map['lids2'],
//       conjunctiva1: map['conjunctiva1'],
//       conjunctiva2: map['conjunctiva2'],
//       cornea1: map['cornea1'],
//       cornea2: map['cornea2'],
//       ac1: map['ac1'],
//       ac2: map['ac2'],
//       iris1: map['iris1'],
//       iris2: map['iris2'],
//       aided1: map['aided1'],
//       aided2: map['aided2'],
//       aided3: map['aided3'],
//       pinhole1: map['pinhole1'],
//       pinhole2: map['pinhole2'],
//       pinhole3: map['pinhole3'],
//       unaided1: map['unaided1'],
//       unaided2: map['unaided2'],
//       unaided3: map['unaided3'],
//       unaidednear: map['unaidednear'],
//       aidednear: map['aidednear'],
//       addpower: map['addpower'],
//       nearvision: map['nearvision'],
//       fp1: map['fp1'],
//       fp2: map['fp2'],
//       fp3: map['fp3'],
//       sub1: map['sub1'],
//       sub2: map['sub2'],
//       sub3: map['sub3'],
//       bcva1: map['bcva1'],
//       bcva2: map['bcva2'],
//       bcva3: map['bcva3'],
//       other: map['other'],
//       pay: map['pay'],
//       pay1: map['pay1'],
//       dateandtime: map['dateandtime'],
//     );
//   }
// }


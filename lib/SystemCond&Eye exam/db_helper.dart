// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Item {
  int? id;
  String radioValue;
  String none1;
  String none2;
  String hyper1;
  String hyper2;
  String diabetes1;
  String diabetes2;
  String covid1;
  String covid2;
  String fall1;
  String fall2;
  String other1;
  String other2;
  String lids1;
  String lids2;
  String conjunctiva1;
  String conjunctiva2;
  String cornea1;
  String cornea2;
  String ac1;
  String ac2;
  String iris1;
  String iris2;
  String dateandtime;
  Item({
    this.id,
    required this.radioValue,
    required this.none1,
    required this.none2,
    required this.hyper1,
    required this.hyper2,
    required this.diabetes1,
    required this.diabetes2,
    required this.covid1,
    required this.covid2,
    required this.fall1,
    required this.fall2,
    required this.other1,
    required this.other2,
    required this.lids1,
    required this.lids2,
    required this.conjunctiva1,
    required this.conjunctiva2,
    required this.cornea1,
    required this.cornea2,
    required this.ac1,
    required this.ac2,
    required this.iris1,
    required this.iris2,
    required this.dateandtime,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'radioValue': radioValue,
      'none1': none1,
      'none2': none2,
      'hyper1': hyper1,
      'hyper2': hyper2,
      'diabetes1': diabetes1,
      'diabetes2': diabetes2,
      'covid1': covid1,
      'covid2': covid2,
      'fall1': fall1,
      'fall2': fall2,
      'other1': other1,
      'other2': other2,
      'lids1': lids1,
      'lids2': lids2,
      'conjunctiva1':conjunctiva1,
      'conjunctiva2':conjunctiva2,
      'cornea1':cornea1,
      'cornea2':cornea2,
      'ac1':ac1,
      'ac2':ac2,
      'iris1':iris1,
      'iris2':iris2,
      'dateandtime': DateTime.now().toString(),
    };
  }

  static Item fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      radioValue: map['radioValue'],
      none1: map['none1'],
      none2: map['none2'],
      hyper1: map['hyper1'],
      hyper2: map['hyper2'],
      diabetes1: map['diabetes1'],
      diabetes2: map['diabetes2'],
      covid1: map['covid1'],
      covid2: map['covid2'],
      fall1: map['fall1'],
      fall2: map['fall2'],
      other1: map['other1'],
      other2: map['other2'],
      lids1: map['lids1'],
      lids2: map['lids2'],
      conjunctiva1: map['conjunctiva1'],
      conjunctiva2: map['conjunctiva2'],
      cornea1: map['cornea1'],
      cornea2: map['cornea2'],
      ac1: map['ac1'],
      ac2: map['ac2'],
      iris1: map['iris1'],
      iris2: map['iris2'],
      dateandtime: map['dateandtime'],
    );
  }
}

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  DatabaseHelper._internal();

  factory DatabaseHelper() => _instance;

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'items_database.db');
    return await openDatabase(
      path,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE items(id INTEGER PRIMARY KEY, radioValue TEXT, none1 TEXT,none2 TEXT,hyper1 TEXT,hyper2 TEXT,diabetes1 TEXT,diabetes2 TEXT,covid1 TEXT,covid2 TEXT,fall1 TEXT,fall2 TEXT,other1 TEXT,other2 TEXT,lids1 TEXT,lids2 TEXT,conjunctiva1 TEXT,conjunctiva2 TEXT,cornea1 TEXT,cornea2 TEXT,ac1 TEXT,ac2 TEXT,iris1 TEXT,iris2 TEXT,dateandtime TEXT)',
        );
      },
      version: 1,
    );
  }

  Future<int> insertItem(Item item) async {
    final db = await database;
    return await db.insert('items', item.toMap());
  }

  Future<List<Item>> getItems() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('items');
    return List.generate(maps.length, (i) => Item.fromMap(maps[i]));
  }

  Future<int> updateItem(Item item) async {
    final db = await database;
    return await db.update(
      'items',
      item.toMap(),
      where: 'id = ?',
      whereArgs: [item.id],
    );
  }

  Future<void> deleteItem(int id) async {
    final db = await database;
    await db.delete(
      'items',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}

import 'package:demographic_information/Vision/details_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'demos_database.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE demos(id INTEGER PRIMARY KEY,radiovalue TEXT,aided1 TEXT,aided2 TEXT,aided3 TEXT,pinhole1 TEXT,pinhole2 TEXT,pinhole3 TEXT,unaided1 TEXT,unaided2 TEXT,unaided3 TEXT,unaidednear TEXT,aidednear TEXT,addpower TEXT,nearvision TEXT,fp1 TEXT,fp2 TEXT,fp3 TEXT,sub1 TEXT,sub2 TEXT,sub3 TEXT,bcva1 TEXT,bcva2 TEXT,bcva3 TEXT,other TEXT,dateandtime TEXT)',
        );
      },
    );
  }

  Future<int> insertItem(Item item) async {
    final db = await database;
    return await db.insert('demos', item.toMap());
  }

  Future<List<Item>> getItems() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('demos');
    return List.generate(maps.length, (i) => Item.fromMap(maps[i]));
  }

  Future<int> updateItem(Item item) async {
    final db = await database;
    return await db.update(
      'demos',
      item.toMap(),
      where: 'id = ?',
      whereArgs: [item.id],
    );
  }

  Future<void> deleteItem(int id) async {
    final db = await database;
    await db.delete(
      'demos',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}


import 'package:demographic_information/Model/models.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final path = join(await getDatabasesPath(), 'demographics.db');
    return await openDatabase(
      path,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE demographics(id INTEGER PRIMARY KEY,radiovalue TEXT,radiovalue1 TEXT,radiovalue2 TEXT,radiovalue3 TEXT,radiovalue4 TEXT,amount TEXT,name TEXT,phone TEXT,idnumber TEXT,income TEXT,address TEXT,landmark TEXT,dateandtime TEXT)',
        );
      },
      version: 1,
    );
  }

  // Insert item
  Future<void> insertItem(Item item) async {
    final db = await database;
    await db.insert('demographics', item.toMap(),);
  }

  // Get all items
  Future<List<Item>> getItems() async {
    final db = await database;
    final maps = await db.query('demographics');
    return List.generate(maps.length, (i) => Item.fromMap(maps[i]));
  }

  // Update item
  Future<void> updateItem(Item item) async {
    final db = await database;
    await db
        .update('demographics', item.toMap(), where: 'id = ?', whereArgs: [item.id]);
  }

  // Delete item
  Future<void> deleteItem(int id) async {
    final db = await database;
    await db.delete('demographics', where: 'id = ?', whereArgs: [id]);
  }
}


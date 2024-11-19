import 'package:demographic_information/Clinical/clinical_model.dart';
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
    final path = join(await getDatabasesPath(), 'graphics.db');
    return await openDatabase(
      path,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE graphics(id INTEGER PRIMARY KEY,radiovalue TEXT,radiovalue1 TEXT,radiovalue2 TEXT,radiovalue3 TEXT,radiovalue4 TEXT,radiovalue5 TEXT,radiovalue6 TEXT,radiovalue7 TEXT,amount TEXT,amount1 TEXT,other TEXT,other1 TEXT,other2 TEXT,other3 TEXT,dateandtime TEXT)',
        );
      },
      version: 1,
    );
  }

  // Insert item
  Future<void> insertItem(Item item) async {
    final db = await database;
    await db.insert('graphics', item.toMap(),);
  }

  // Get all items
  Future<List<Item>> getItems() async {
    final db = await database;
    final maps = await db.query('graphics');
    return List.generate(maps.length, (i) => Item.fromMap(maps[i]));
  }

  // Update item
  Future<void> updateItem(Item item) async {
    final db = await database;
    await db
        .update('graphics', item.toMap(), where: 'id = ?', whereArgs: [item.id]);
  }

  // Delete item
  Future<void> deleteItem(int id) async {
    final db = await database;
    await db.delete('graphics', where: 'id = ?', whereArgs: [id]);
  }
}

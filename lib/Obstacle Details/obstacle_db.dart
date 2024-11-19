
import 'package:demographic_information/Obstacle%20Details/obstacle_models.dart';
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
    final path = join(await getDatabasesPath(), 'items.db');
    return await openDatabase(
      path,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE items(id INTEGER PRIMARY KEY,radiovalue TEXT,radiovalue1 TEXT,radiovalue2 TEXT,pay TEXT,pay1 TEXT,other TEXT,other1 TEXT,other2 TEXT,dateandtime TEXT)',
        );
      },
      version: 1,
    );
  }

  // Insert item
  Future<void> insertItem(Item item) async {
    final db = await database;
    await db.insert('items', item.toMap(),);
  }

  // Get all items
  Future<List<Item>> getItems() async {
    final db = await database;
    final maps = await db.query('items');
    return List.generate(maps.length, (i) => Item.fromMap(maps[i]));
  }

  // Update item
  Future<void> updateItem(Item item) async {
    final db = await database;
    await db
        .update('items', item.toMap(), where: 'id = ?', whereArgs: [item.id]);
  }

  // Delete item
  Future<void> deleteItem(int id) async {
    final db = await database;
    await db.delete('items', where: 'id = ?', whereArgs: [id]);
  }
}

// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
//
// class DatabaseHelper {
//   static final DatabaseHelper _instance = DatabaseHelper.internal();
//
//   factory DatabaseHelper() => _instance;
//
//   static Database? _db;
//
//   DatabaseHelper.internal();
//
//   //
//   Future<Database> get database async {
//     if (_db != null) return _db!;
//     _db = await _initDB();
//     return _db!;
//   }
//
//   // انشاء طريق الي ال DB
//   Future<Database> _initDB() async {
//     final path = join(await getDatabasesPath(), 'item.db');
//
//     return await openDatabase(path, version: 1, onCreate: _oncreate);
//   }
//
//   // CREAT TABELE
//   Future _oncreate(Database db, int version) async {
//     await db.execute('''
//     CREATE TABLE item(
//     ID INTEGER PRIMARY KEY AUTOINCREMENT,
//     name TEXT,
//     barcode TEXT,
//     price REAL
//     )
//     ''');
//   }
//
//   // GET DATA BASE AND INSERT DATA
//   Future<int> insert(Map<String, dynamic> item) async {
//     final db = await database;
//     return await db.insert('item', item);
//   }
//
//   // GET DATA FROM DB
//   Future<List<Map<String, dynamic>>> getItems() async {
//     final db = await database;
//     return await db.query('items');
//   }
//
//   // UPDATE DATA
//   Future<int> updateItem(Map<String, dynamic> item) async {
//     final db = await database;
//     return await db.update(
//       'items',
//       item,
//       where: 'id = ?',
//       whereArgs: [item['id']],
//     );
//   }
//
//   // DELETE DATA
//   Future<int> delete(int id) async {
//     final db = await database;
//     return await db.delete('items', where: 'id = ?', whereArgs: [id]);
//   }
// }

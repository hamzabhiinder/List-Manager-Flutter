import 'dart:io' as io;
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../model/list_model.dart';

class DBHelper {
  static Database? _db;

  Future<Database?> get db async {
    if (_db != null) {
      return _db;
    }

    _db = await initDatabase();
    return _db;
  }

  initDatabase() async {
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, "items.db");
    var db = await openDatabase(path, version: 1, onCreate: _onCreat);
    return db;
  }

  _onCreat(Database db, int version) async {
    await db.execute(CREATITEMSTABLE);
  }

  Future<ItemsModel> insertTable(ItemsModel itemsModel) async {
    var dbClient = await db;
    dbClient!.insert("items", itemsModel.toMap());
    return itemsModel;
  }

  Future<int> deleteTable(int id) async {
    var dbClient = await db;
    return await dbClient!.delete("items", where: "id = ?", whereArgs: [id]);
  }

  Future<int> updateTable(ItemsModel itemsModel) async {
    var dbClient = await db;
    return await dbClient!.update(
      "items",
      itemsModel.toMap(),
      where: "id = ?",
      whereArgs: [itemsModel.id],
    );
  }

  Future<List<ItemsModel>> getItemsList() async {
    var dbClient = await db;
    List<Map<String, Object?>> queryResult = await dbClient!.query("items");

    return queryResult.map((e) => ItemsModel.fromMap(e)).toList();
  }
}

const CREATITEMSTABLE = ''' 
CREATE TABLE items (id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT NOT NULL)
''';

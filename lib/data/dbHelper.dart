import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:student_course_app/models/users.dart';

class DbHelper {
  Database _db;

  Future<Database> get db async {
    if (_db == null) {
      _db = await initializeDb();
    }
  }

  Future<Database> initializeDb() async {
    String dbPath = join(await getDatabasesPath(), "etrade.db");
    var eTradeDb = openDatabase(dbPath, version: 1, onCreate: createDb);
    return eTradeDb;
  }

  void createDb(Database db, int version) async {
    await db.execute(
        "Create table users(id integer primary key, name text, email text, password text, type integer)");
  }

  Future<List<Users>> getUsers() async {
    Database db = await this.db;
    var result = await db.query("users");

    return List.generate(
      result.length,
      (i) {
        return Users.fromObject(result[i]);
      },
    );
  }

  Future<int> insert(Users users) async {
    Database db = await this.db;
    var result = await db.insert("users", users.toMap());
  }

  Future<int> delete(int id) async {
    Database db = await this.db;
    var result = await db.rawDelete("delete from users where id=$id");
  }

  Future<int> update(Users users) async {
    Database db = await this.db;
    var result = await db.update("users", users.toMap(),where: "id=?",whereArgs: [users.userId]);
  }
}


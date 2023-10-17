import 'dart:developer';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../model/person_model.dart';
import '../model/sender_model.dart';

class DatabaseHelper {
  // TODO : Wil be delete
  //   static final DatabaseHelper _instance = DatabaseHelper._internal();
  // factory DatabaseHelper() => _instance;

  static final DatabaseHelper instance = DatabaseHelper._internal();

  static Database? _database;

  DatabaseHelper._internal();

  Future<Database?> get database async {
    if (_database != null && _database!.isOpen != false) return _database;

    _database = await initDatabase();
    return _database;
  }

  Future<Database> initDatabase() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'my_database.db');

    return await openDatabase(path, version: 1, onCreate: _createDatabase);
  }

  Future<void> _createDatabase(Database db, int version) async {
    await db.execute('''
      CREATE TABLE Senders (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        senderName TEXT,
        senderNumber TEXT,
        senderCountryCode TEXT,
        additionalInfo TEXT,
        UNIQUE(senderNumber) ON CONFLICT REPLACE
      )
    ''');

    await db.execute('''
      CREATE TABLE Persons (
        personName TEXT,
        personNumber TEXT PRIMARY KEY,
        personEmail TEXT,
        personCountryCode TEXT
      )
    ''');
  }

  Future<int> insertSender(SenderModel sender) async {
    final db = await database;
    try {
      return await db!.insert('Senders', sender.toJson());
    } catch (e) {
      log("Error in insertSender: $e");
      return -1; // veya uygun bir hata kodu dönebilirsiniz
    } finally {
      await closeDatabase();
    }
  }

  Future<int> updateSender(SenderModel sender) async {
    final db = await database;
    try {
      return await db!.update(
        'Senders',
        sender.toJson(),
        where: 'id = ?',
        whereArgs: [sender.id],
      );
    } catch (e) {
      log("Error in updateSender: $e");
      return -1; // veya uygun bir hata kodu dönebilirsiniz
    } finally {
      await closeDatabase();
    }
  }

  Future<int> deleteSender(int id) async {
    final db = await database;
    try {
      return await db!.delete(
        'Senders',
        where: 'id = ?',
        whereArgs: [id],
      );
    } catch (e) {
      log("Error in deleteSender: $e");
      return -1; // veya uygun bir hata kodu dönebilirsiniz
    } finally {
      await closeDatabase();
    }
  }

  Future<SenderModel?> getSender(int id) async {
    final db = await database;
    if (db != null) {
      try {
        List<Map<String, dynamic>> maps = await db.query(
          'Senders',
          where: 'id = ?',
          whereArgs: [id],
        );

        if (maps.isNotEmpty) {
          return SenderModel.fromJson(maps.first);
        } else {
          return null;
        }
      } on Exception catch (e) {
        log("DB HELPER getSender() ERROR : ${e.toString()}");
        return null;
      } finally {
        closeDatabase();
      }
    } else {
      return null;
    }
  }

  Future<List<SenderModel>> getAllSenders() async {
    final db = await database;
    try {
      final List<Map<String, dynamic>> senderMaps = await db!.query('Senders');
      return senderMaps.map((map) => SenderModel.fromJson(map)).toList();
    } catch (e) {
      log("Error in getAllSenders: $e");
      return [];
    } finally {
      await closeDatabase();
    }
  }

  Future<int> insertPerson(PersonModel person) async {
    final db = await database;
    try {
      return await db!.insert('Persons', person.toJson());
    } catch (e) {
      log("Error in insertPerson: $e");
      return -1; // veya uygun bir hata kodu dönebilirsiniz
    } finally {
      await closeDatabase();
    }
  }

  Future<int> updatePerson(PersonModel person) async {
    final db = await database;
    try {
      return await db!.update(
        'Persons',
        person.toJson(),
        where: 'personNumber = ?',
        whereArgs: [person.personNumber],
      );
    } catch (e) {
      log("Error in updatePerson: $e");
      return -1; // veya uygun bir hata kodu dönebilirsiniz
    } finally {
      await closeDatabase();
    }
  }

  Future<int> deletePerson(String personNumber) async {
    final db = await database;
    try {
      return await db!.delete(
        'Persons',
        where: 'personNumber = ?',
        whereArgs: [personNumber],
      );
    } catch (e) {
      log("Error in deletePerson: $e");
      return -1; // veya uygun bir hata kodu dönebilirsiniz
    } finally {
      await closeDatabase();
    }
  }

  Future<PersonModel?> getPerson(String personNumber) async {
    final db = await database;
    try {
      List<Map<String, dynamic>> maps = await db!.query(
        'Persons',
        where: 'personNumber = ?',
        whereArgs: [personNumber],
      );

      if (maps.isNotEmpty) {
        return PersonModel.fromJson(maps.first);
      } else {
        return null;
      }
    } catch (e) {
      log("Error in getPerson: $e");
      return null;
    } finally {
      await closeDatabase();
    }
  }

  Future<List<PersonModel>> getAllPersons() async {
    final db = await database;
    try {
      final List<Map<String, dynamic>> personMaps = await db!.query('Persons');
      return personMaps.map((map) => PersonModel.fromJson(map)).toList();
    } catch (e) {
      log("Error in getAllPersons: $e");
      return [];
    } finally {
      await closeDatabase();
    }
  }

  Future<void> closeDatabase() async {
    final db = await database;
    db!.close();
  }
}

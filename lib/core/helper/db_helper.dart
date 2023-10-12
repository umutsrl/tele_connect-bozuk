import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../model/person_model.dart';
import '../model/sender_model.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();

  factory DatabaseHelper() => _instance;

  static Database? _database;

  DatabaseHelper._internal();

  Future<Database?> get database async {
    if (_database != null) return _database;

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

  Future<int> insertSender(Senders sender) async {
    final db = await database;
    return await db!.insert('Senders', sender.toJson());
  }

  Future<int> updateSender(Senders sender) async {
    final db = await database;
    return await db!.update(
      'Senders',
      sender.toJson(),
      where: 'id = ?',
      whereArgs: [sender.id],
    );
  }

  Future<int> deleteSender(int id) async {
    final db = await database;
    return await db!.delete(
      'Senders',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<Senders?> getSender(int id) async {
    final db = await database;
    List<Map<String, dynamic>> maps = await db!.query(
      'Senders',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Senders.fromJson(maps.first);
    } else {
      return null;
    }
  }

  Future<List<Senders>> getAllSenders() async {
    final db = await database;
    final List<Map<String, dynamic>> senderMaps = await db!.query('Senders');
    return senderMaps.map((map) => Senders.fromJson(map)).toList();
  }

  Future<int> insertPerson(Person person) async {
    final db = await database;
    return await db!.insert('Persons', person.toJson());
  }

  Future<int> updatePerson(Person person) async {
    final db = await database;
    return await db!.update(
      'Persons',
      person.toJson(),
      where: 'personNumber = ?',
      whereArgs: [person.personNumber],
    );
  }

  Future<int> deletePerson(String personNumber) async {
    final db = await database;
    return await db!.delete(
      'Persons',
      where: 'personNumber = ?',
      whereArgs: [personNumber],
    );
  }

  Future<Person?> getPerson(String personNumber) async {
    final db = await database;
    List<Map<String, dynamic>> maps = await db!.query(
      'Persons',
      where: 'personNumber = ?',
      whereArgs: [personNumber],
    );

    if (maps.isNotEmpty) {
      return Person.fromJson(maps.first);
    } else {
      return null;
    }
  }

  Future<List<Person>> getAllPersons() async {
    final db = await database;
    final List<Map<String, dynamic>> personMaps = await db!.query('Persons');
    return personMaps.map((map) => Person.fromJson(map)).toList();
  }

  Future<void> closeDatabase() async {
    final db = await database;
    db!.close();
  }
}

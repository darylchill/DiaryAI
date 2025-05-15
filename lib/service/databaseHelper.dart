import 'package:diary_ai/model/models.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static Database? _database;
  static const String _dbName = "diary.db";
  static const String _userTable = "user";

  static const String _diaryTable ="diary";

  /// Get Database Instance
  static Future<Database> get database async {
    if (_database != null) return _database!;
    return await _initDB();
  }

  /// Initialize Database
  static Future<Database> _initDB() async {
    final path = join(await getDatabasesPath(), _dbName);
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE diary (
            id TEXT PRIMARY KEY,
            userID INTEGER NOT  NULL,
            diaryTitle TEXT,
            diaryDescription TEXT,
            dateTime TEXT NOT NULL
          )
        ''');
        await db.execute('''
          CREATE TABLE user (
            id TEXT PRIMARY KEY,
            email TEXT NOT NULL
          )
        ''');
      },
    );
  }

  Future<void> saveUserEmail(String email) async {
    final db = await database;
    await db.insert(_userTable, {
      'email': email,
    }, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<String?> getUserEmail() async {
    final db = await database;
    final result = await db.query(_userTable);
    if (result.isNotEmpty) {
      return result.first['email'] as String?;
    }
    return null;
  }

  Future<void> clearUserEmail() async {
    final db = await database;
    await db.delete(_userTable);
  }

  /// **Insert a Todo**
  static Future<void> insertDiary(DiaryModel diary) async {
    final db = await database;
    await db.insert(_diaryTable, {
      'id': diary.id,
      'userID': diary.userId,
      'diaryTitle': diary.diaryTitle,
      'diaryDescription': diary.diaryDescription,
      'dateTime': diary.dateTime.toIso8601String(),
    }, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  /// **Retrieve All Todos**
  static Future<List<DiaryModel>> getDiaries() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(_diaryTable);

    return maps
        .map(
          (map) => DiaryModel(
            id: map['id'],
            diaryTitle: map['diaryTitle'],
            diaryDescription: map['diaryDescription'],
            userId: map['userID'],
            dateTime: DateTime.parse(map['dateTime']),
          ),
        )
        .toList();
  }

  /// **Update Todo Completion Status**
  static Future<void> updateDiary(String id, bool completed) async {
    final db = await database;
    await db.update(
      'diary',
      {'completed': completed ? 1 : 0},
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}

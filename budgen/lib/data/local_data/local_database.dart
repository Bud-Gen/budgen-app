import 'package:budgen/domain/core/database_constants.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart' as sql;

class LocalDatabase {
  LocalDatabase._privateConstructor();
  static final LocalDatabase instance = LocalDatabase._privateConstructor();

  factory LocalDatabase() {
    return instance;
  }

  static sql.Database _database;

  Future<sql.Database> get database async {
    if (_database != null) return _database;

    _database = await _initDatabase();
    return _database;
  }

  Future<sql.Database> _initDatabase() async {
    String pathDB = await sql.getDatabasesPath();
    String _db = NAME_DB;
    String path = join(pathDB, _db);
    return await sql.openDatabase(
      path,
      version: VERSION,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(sql.Database db, int version) async {
    List<String> queries = [
      CREATE_FILE_TABLE,
      CREATE_ITEM_TABLE,
      CREATE_PROJECT_TABLE,
      CREATE_WORKER_TABLE,
      CREATE_USER_TABLE
    ];

    for (String query in queries) {
      await db.execute(query);
    }
  }

  Future<void> deleteDatabase() async {
    // await _database.close();
  }
}

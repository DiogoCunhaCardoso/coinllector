import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseService {
  static final DatabaseService instance = DatabaseService._constructor();
  static Database? _db;

  DatabaseService._constructor();

  final String _databaseName = "master_db.db";
  final int _databaseVersion = 1;

  // Table Name
  final String _coinsTable = "coins";
  final String _userCoinsTable = "user_coins";

  // Column Names - Coins
  final String _id = "id";
  final String _type = "type";
  final String _image = "image";
  final String _quantity = "quantity";
  final String _periodStartDate = "periodStartDate";
  final String _periodEndDate = "periodEndDate";
  final String _description = "description";
  final String _country = "country";

  // Column Names - User Coins
  final String _userCoinId = "coin_id";

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDatabase();
    return _db!;
  }

  Future<Database> _initDatabase() async {
    final databaseDirPath = await getDatabasesPath();
    final databasePath = join(databaseDirPath, _databaseName);

    return await openDatabase(
      databasePath,
      version: _databaseVersion,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    // COIN TABLE
    await db.execute(''' 
      CREATE TABLE $_coinsTable (
        $_id INTEGER PRIMARY KEY,
        $_type TEXT NOT NULL,
        $_image TEXT,
        $_quantity INTEGER,
        $_periodStartDate TEXT NOT NULL,
        $_periodEndDate TEXT,
        $_description TEXT NOT NULL,
        $_country TEXT NOT NULL
      )
    ''');

    // USER COINS TABLE
    await db.execute('''
      CREATE TABLE $_userCoinsTable (
        $_userCoinId INTEGER,
        FOREIGN KEY ($_userCoinId) REFERENCES $_coinsTable($_id)
      )
    ''');
  }

  // ADD A COIN FROM COLLECTION
  void addCoin(int coinId) async {
    final db = await database;
    await db.insert(_userCoinsTable, {_userCoinId: coinId});
  }

  // REMOVE A COIN FROM COLLECTION
  void removeCoin(int coinId) async {
    final db = await database;
    await db.delete(
      _userCoinsTable,
      where: '$_userCoinId = ?',
      whereArgs: [coinId],
    );
  }

  // CHECK IF USER OWNS A COIN
  Future<bool> userOwnsCoin(int coinId) async {
    final db = await database;
    final result = await db.query(
      _userCoinsTable,
      where: '$_userCoinId = ?',
      whereArgs: [coinId],
    );
    return result.isNotEmpty;
  }
}

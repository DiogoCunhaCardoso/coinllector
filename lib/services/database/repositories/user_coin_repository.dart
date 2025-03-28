import 'package:logging/logging.dart';
import 'package:sqflite/sqflite.dart';
import '../core/database_tables.dart';

class UserCoinRepository {
  final Database db;
  final _log = Logger('USER_COIN_REPOSITORY');

  UserCoinRepository(this.db);

  Future<void> addCoin(int coinId) async {
    await db.insert(DatabaseTables.userCoins, {
      DatabaseTables.userCoinId: coinId,
    });
  }

  Future<void> removeCoin(int coinId) async {
    await db.delete(
      DatabaseTables.userCoins,
      where: '${DatabaseTables.userCoinId} = ?',
      whereArgs: [coinId],
    );
  }

  Future<bool> userOwnsCoin(int coinId) async {
    final result = await db.query(
      DatabaseTables.userCoins,
      where: '${DatabaseTables.userCoinId} = ?',
      whereArgs: [coinId],
    );
    return result.isNotEmpty;
  }
}

import 'package:coinllector_app/shared/enums/coin_quality_enum.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:sqflite/sqflite.dart';
import '../local/database/database_tables.dart';

class UserCoinRemoteDataSource {
  final Database db;

  UserCoinRemoteDataSource(this.db);

  Future<void> insertCoin(int coinId) async {
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

  Future<String?> getCoinQuality(int coinId) async {
    final result = await db.query(
      DatabaseTables.userCoins,
      columns: [DatabaseTables.quality],
      where: '${DatabaseTables.userCoinId} = ?',
      whereArgs: [coinId],
      limit: 1,
    );

    if (result.isEmpty) return null;
    return result.first[DatabaseTables.quality] as String?;
  }

  Future<void> updateCoinQuality(int coinId, CoinQuality? quality) async {
    await db.update(
      DatabaseTables.userCoins,
      {DatabaseTables.quality: quality?.name},
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

  Future<List<int>> getOwnedCoins() async {
    final result = await db.query(DatabaseTables.userCoins);
    return result.map((row) => row[DatabaseTables.userCoinId] as int).toList();
  }

  Future<List<Map<String, Object?>>> getCountGroupedByType() async {
    return await db.rawQuery('''
    SELECT c.${DatabaseTables.type}, COUNT(*) as count 
    FROM ${DatabaseTables.userCoins} uc
    JOIN ${DatabaseTables.coins} c ON uc.${DatabaseTables.userCoinId} = c.${DatabaseTables.id}
    GROUP BY c.${DatabaseTables.type}
  ''');
  }

  //REMOVE THIS AFTER //TODO
  Future<List<Map<String, Object?>>> getCountGroupedByCountry() async {
    return await db.rawQuery('''
      SELECT c.${DatabaseTables.country}, COUNT(*) as count 
      FROM ${DatabaseTables.userCoins} uc
      JOIN ${DatabaseTables.coins} c ON uc.${DatabaseTables.userCoinId} = c.${DatabaseTables.id}
      GROUP BY c.${DatabaseTables.country}
    ''');
  }

  // COUNT -----------------------------------------------------------------------------------------------

  Future<int> getOwnedCoinCount() async {
    final result = await db.rawQuery(
      'SELECT COUNT(*) FROM ${DatabaseTables.userCoins}',
    );
    return Sqflite.firstIntValue(result) ?? 0;
  }

  Future<int> getOwnedCoinCountByCountry(CountryNames country) async {
    final result = await db.rawQuery(
      '''
    SELECT COUNT(*) as count
    FROM ${DatabaseTables.userCoins} uc
    JOIN ${DatabaseTables.coins} c
      ON uc.${DatabaseTables.userCoinId} = c.${DatabaseTables.id}
    WHERE c.${DatabaseTables.country} = ?
    ''',
      [country.name],
    );

    return Sqflite.firstIntValue(result) ?? 0;
  }

  Future<int> getOwnedCoinCountByType(CoinType type) async {
    final result = await db.rawQuery(
      '''
    SELECT COUNT(*) as count
    FROM ${DatabaseTables.userCoins} uc
    JOIN ${DatabaseTables.coins} c
      ON uc.${DatabaseTables.userCoinId} = c.${DatabaseTables.id}
    WHERE c.${DatabaseTables.type} = ?
  ''',
      [type.name],
    );
    return Sqflite.firstIntValue(result) ?? 0;
  }
}

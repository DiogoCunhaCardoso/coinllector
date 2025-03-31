import 'package:coinllector_app/models/coin.dart';
import 'package:coinllector_app/models/country.dart';
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
    _log.info("Added coin $coinId");
  }

  Future<void> removeCoin(int coinId) async {
    await db.delete(
      DatabaseTables.userCoins,
      where: '${DatabaseTables.userCoinId} = ?',
      whereArgs: [coinId],
    );
    _log.info("Removed coin $coinId");
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

  // COUNT ------------------------------------------------------

  Future<int> getOwnedCoinCount() async {
    final result = await db.rawQuery(
      'SELECT COUNT(*) FROM ${DatabaseTables.userCoins}',
    );
    return Sqflite.firstIntValue(result) ?? 0;
  }

  Future<Map<CoinType, int>> getOwnedCoinsCountByType() async {
    // Join userCoins with coins table to get type information
    final result = await db.rawQuery('''
    SELECT c.${DatabaseTables.type}, COUNT(*) as count 
    FROM ${DatabaseTables.userCoins} uc
    JOIN ${DatabaseTables.coins} c ON uc.${DatabaseTables.userCoinId} = c.${DatabaseTables.id}
    GROUP BY c.${DatabaseTables.type}
  ''');

    // Initialize all types with 0 count
    final counts = <CoinType, int>{};
    for (var type in CoinType.values) {
      counts[type] = 0;
    }

    // Update counts from query results
    for (var row in result) {
      try {
        final type = CoinType.values.byName(row[DatabaseTables.type] as String);
        counts[type] = row['count'] as int;
      } catch (e) {
        _log.warning('Error parsing coin type: $e');
      }
    }

    return counts;
  }

  Future<Map<CountryNames, int>> getOwnedCoinsCountByCountry() async {
    // Join userCoins with coins table to get country information
    final result = await db.rawQuery('''
    SELECT c.${DatabaseTables.country}, COUNT(*) as count 
    FROM ${DatabaseTables.userCoins} uc
    JOIN ${DatabaseTables.coins} c ON uc.${DatabaseTables.userCoinId} = c.${DatabaseTables.id}
    GROUP BY c.${DatabaseTables.country}
  ''');

    // Initialize all countries with 0 count
    final counts = <CountryNames, int>{};
    for (var country in CountryNames.values) {
      counts[country] = 0;
    }

    // Update counts from query results
    for (var row in result) {
      try {
        final country = CountryNames.values.byName(
          row[DatabaseTables.country] as String,
        );
        counts[country] = row['count'] as int;
      } catch (e) {
        _log.warning('Error parsing country: $e');
      }
    }

    return counts;
  }
}

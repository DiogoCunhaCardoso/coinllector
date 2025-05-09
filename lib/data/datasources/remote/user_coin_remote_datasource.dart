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

  //

  Future<void> removeCoin(int coinId) async {
    await db.delete(
      DatabaseTables.userCoins,
      where: '${DatabaseTables.userCoinId} = ?',
      whereArgs: [coinId],
    );
  }

  //

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

  //

  Future<void> updateCoinQuality(int coinId, CoinQuality? quality) async {
    await db.update(
      DatabaseTables.userCoins,
      {DatabaseTables.quality: quality?.name},
      where: '${DatabaseTables.userCoinId} = ?',
      whereArgs: [coinId],
    );
  }

  //

  Future<bool> userOwnsCoin(int coinId) async {
    final result = await db.query(
      DatabaseTables.userCoins,
      where: '${DatabaseTables.userCoinId} = ?',
      whereArgs: [coinId],
    );
    return result.isNotEmpty;
  }

  //

  Future<List<int>> getOwnedCoins() async {
    final result = await db.query(DatabaseTables.userCoins);
    return result.map((row) => row[DatabaseTables.userCoinId] as int).toList();
  }

  //

  Future<List<Map<String, Object?>>> getCountGroupedByType({
    List<CountryNames>? excludeCountries,
  }) async {
    if (excludeCountries == null || excludeCountries.isEmpty) {
      // Original query without exclusions
      return await db.rawQuery('''
        SELECT c.${DatabaseTables.type}, COUNT(*) as count 
        FROM ${DatabaseTables.userCoins} uc
        JOIN ${DatabaseTables.coins} c ON uc.${DatabaseTables.userCoinId} = c.${DatabaseTables.coinId}
        GROUP BY c.${DatabaseTables.type}
      ''');
    } else {
      // Query with country exclusions
      final countryNames = excludeCountries.map((c) => c.name).toList();
      final placeholders = List.filled(countryNames.length, '?').join(', ');

      return await db.rawQuery('''
        SELECT c.${DatabaseTables.type}, COUNT(*) as count 
        FROM ${DatabaseTables.userCoins} uc
        JOIN ${DatabaseTables.coins} c ON uc.${DatabaseTables.userCoinId} = c.${DatabaseTables.coinId}
        WHERE c.${DatabaseTables.country} NOT IN ($placeholders)
        GROUP BY c.${DatabaseTables.type}
      ''', countryNames);
    }
  }

  //

  Future<List<Map<String, Object?>>> getCountGroupedByCountry() async {
    return await db.rawQuery('''
      SELECT c.${DatabaseTables.country}, COUNT(*) as count 
      FROM ${DatabaseTables.userCoins} uc
      JOIN ${DatabaseTables.coins} c ON uc.${DatabaseTables.userCoinId} = c.${DatabaseTables.coinId}
      GROUP BY c.${DatabaseTables.country}
    ''');
  }

  // COUNT -----------------------------------------------------------------------------------------------

  Future<int> getOwnedCoinCount({List<CountryNames>? excludeCountries}) async {
    if (excludeCountries == null || excludeCountries.isEmpty) {
      //
      // Original query
      final result = await db.rawQuery(
        'SELECT COUNT(*) FROM ${DatabaseTables.userCoins}',
      );
      return Sqflite.firstIntValue(result) ?? 0;
    } else {
      //
      // Query with exclusions
      final countryNames = excludeCountries.map((c) => c.name).toList();
      final placeholders = List.filled(countryNames.length, '?').join(', ');

      final result = await db.rawQuery('''
        SELECT COUNT(*) as count
        FROM ${DatabaseTables.userCoins} uc
        JOIN ${DatabaseTables.coins} c 
          ON uc.${DatabaseTables.userCoinId} = c.${DatabaseTables.coinId}
        WHERE c.${DatabaseTables.country} NOT IN ($placeholders)
      ''', countryNames);

      return Sqflite.firstIntValue(result) ?? 0;
    }
  }

  //

  Future<int> getOwnedCoinCountByCountry(CountryNames country) async {
    final result = await db.rawQuery(
      '''
    SELECT COUNT(*) as count
    FROM ${DatabaseTables.userCoins} uc
    JOIN ${DatabaseTables.coins} c
      ON uc.${DatabaseTables.userCoinId} = c.${DatabaseTables.coinId}
    WHERE c.${DatabaseTables.country} = ?
    ''',
      [country.name],
    );

    return Sqflite.firstIntValue(result) ?? 0;
  }

  //

  Future<int> getOwnedCoinCountByType(
    CoinType type, {
    List<CountryNames>? excludeCountries,
    String? startDate,
  }) async {
    final List<String> whereClauses = ['c.${DatabaseTables.type} = ?'];
    final List<dynamic> queryArgs = [type.name];

    // Filter by year if provided
    if (startDate != null) {
      whereClauses.add('c.${DatabaseTables.periodStartDate} LIKE ?');
      queryArgs.add('$startDate%');
    }

    // Country exclusions
    if (excludeCountries != null && excludeCountries.isNotEmpty) {
      final countryPlaceholders = List.filled(
        excludeCountries.length,
        '?',
      ).join(', ');
      whereClauses.add(
        'c.${DatabaseTables.country} NOT IN ($countryPlaceholders)',
      );
      queryArgs.addAll(excludeCountries.map((c) => c.name));
    }

    final query = '''
    SELECT COUNT(*) as count
    FROM ${DatabaseTables.userCoins} uc
    JOIN ${DatabaseTables.coins} c
      ON uc.${DatabaseTables.userCoinId} = c.${DatabaseTables.coinId}
    WHERE ${whereClauses.join(' AND ')}
  ''';

    final result = await db.rawQuery(query, queryArgs);
    return Sqflite.firstIntValue(result) ?? 0;
  }
}

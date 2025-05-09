import 'package:coinllector_app/data/datasources/local/database/database_tables.dart';
import 'package:coinllector_app/data/mappers/coin_mapper.dart';
import 'package:coinllector_app/data/models/coin_model.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:sqflite/sqflite.dart';

class CoinRemoteDataSource {
  final Database db;

  CoinRemoteDataSource(this.db);

  // GET (with optional filter to filter by year) -----------------------------------------

  Future<List<CoinModel>> getAllCoinsByType(
    CoinType type, {
    String? startDate, // Just the year, e.g., "2007"
  }) async {
    final where = '${DatabaseTables.type} = ?';
    final whereArgs = <dynamic>[type.name];

    String fullQuery = where;
    if (startDate != null) {
      fullQuery += ' AND ${DatabaseTables.periodStartDate} LIKE ?';
      whereArgs.add('$startDate%'); // Matches dates starting with the year
    }

    final data = await db.query(
      DatabaseTables.coins,
      where: fullQuery,
      whereArgs: whereArgs,
    );

    return data.map((el) => CoinMapper.fromMap(el)).toList();
  }

  //

  Future<List<CoinModel>> getAllCoinsByCountry(CountryNames country) async {
    final data = await db.query(
      DatabaseTables.coins,
      where: '${DatabaseTables.country} = ?',
      whereArgs: [country.name],
    );

    return data.map((el) => CoinMapper.fromMap(el)).toList();
  }

  //
  Future<CoinModel?> getCoinById(int id) async {
    final result = await db.query(
      DatabaseTables.coins,
      where: '${DatabaseTables.coinId} = ?',
      whereArgs: [id],
      limit: 1,
    );

    if (result.isEmpty) return null;

    return CoinMapper.fromMap(result.first);
  }
  // COUNT (with optional filter to remove certain countries (microstates)) ----------------

  Future<int> getCoinCount({List<CountryNames>? excludeCountries}) async {
    String query = 'SELECT COUNT(*) FROM ${DatabaseTables.coins}';
    List<Object?>? whereArgs;

    // Add WHERE clause to exclude specific countries if needed
    if (excludeCountries != null && excludeCountries.isNotEmpty) {
      // enum -> string
      final countryNames = excludeCountries.map((c) => c.name).toList();

      // Placehold string for SQL query (?, ?, ?, etc.)
      final placeholders = List.filled(countryNames.length, '?').join(', ');

      query += ' WHERE ${DatabaseTables.country} NOT IN ($placeholders)';
      whereArgs = countryNames;
    }

    final result = await db.rawQuery(query, whereArgs);
    return Sqflite.firstIntValue(result) ?? 0;
  }

  //

  Future<int> getCountryTotalCoinCount(CountryNames country) async {
    final result = await db.rawQuery(
      'SELECT COUNT(*) FROM ${DatabaseTables.coins} WHERE ${DatabaseTables.country} = ?',
      [country.name],
    );
    return Sqflite.firstIntValue(result) ?? 0;
  }

  //

  Future<int> getTypeTotalCoinCount(CoinType type, {String? startDate}) async {
    String query =
        'SELECT COUNT(*) FROM ${DatabaseTables.coins} WHERE ${DatabaseTables.type} = ?';
    List<dynamic> args = [type.name];

    if (startDate != null) {
      query += ' AND ${DatabaseTables.periodStartDate} LIKE ?';
      args.add('$startDate%'); // Matches dates starting with the year
    }

    final result = await db.rawQuery(query, args);
    return Sqflite.firstIntValue(result) ?? 0;
  }

  // ON INIT ------------------------------------------------------------------------------

  Future<void> insertInitialCoins(List<CoinModel> coins) async {
    for (var coin in coins) {
      final coinMap = CoinMapper.toMap(coin);
      await db.insert(DatabaseTables.coins, coinMap);
    }
  }
}

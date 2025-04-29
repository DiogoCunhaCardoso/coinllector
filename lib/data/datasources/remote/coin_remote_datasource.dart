import 'package:coinllector_app/data/datasources/local/database/database_tables.dart';
import 'package:coinllector_app/data/mappers/coin_mapper.dart';
import 'package:coinllector_app/data/models/coin_model.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:sqflite/sqflite.dart';

class CoinRemoteDataSource {
  final Database db;

  CoinRemoteDataSource(this.db);

  // GET --------------------------------------------------------------------------

  Future<List<CoinModel>> getAllCoinsByType(CoinType type) async {
    final data = await db.query(
      DatabaseTables.coins,
      where: '${DatabaseTables.type} = ?',
      whereArgs: [type.name],
    );

    return data.map((el) => CoinMapper.fromMap(el)).toList();
  }

  Future<List<CoinModel>> getAllCoinsByCountry(CountryNames country) async {
    final data = await db.query(
      DatabaseTables.coins,
      where: '${DatabaseTables.country} = ?',
      whereArgs: [country.name],
    );

    return data.map((el) => CoinMapper.fromMap(el)).toList();
  }

  // COUNT -------------------------------------------------------------------------

  Future<int> getCoinCount() async {
    final result = await db.rawQuery(
      'SELECT COUNT(*) FROM ${DatabaseTables.coins}',
    );
    return Sqflite.firstIntValue(result) ?? 0;
  }

  Future<int> getCountryTotalCoinCount(CountryNames country) async {
    final result = await db.rawQuery(
      'SELECT COUNT(*) FROM ${DatabaseTables.coins} WHERE ${DatabaseTables.country} = ?',
      [country.name],
    );
    return Sqflite.firstIntValue(result) ?? 0;
  }

  Future<int> getTypeTotalCoinCount(CoinType type) async {
    final result = await db.rawQuery(
      'SELECT COUNT(*) FROM ${DatabaseTables.coins} WHERE ${DatabaseTables.type} = ?',
      [type.name],
    );
    return Sqflite.firstIntValue(result) ?? 0;
  }

  // ON INIT ------------------------------------------------------------------------

  Future<void> insertInitialCoins(List<CoinModel> coins) async {
    for (var coin in coins) {
      final coinMap = CoinMapper.toMap(coin);
      await db.insert(DatabaseTables.coins, coinMap);
    }
  }
}

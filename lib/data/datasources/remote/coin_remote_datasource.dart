import 'package:coinllector_app/data/datasources/local/database/database_tables.dart';
import 'package:coinllector_app/data/models/coin_model.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:sqflite/sqflite.dart';

class CoinRemoteDataSource {
  final Database db;

  CoinRemoteDataSource(this.db);

  Future<List<Map<String, dynamic>>> getAllCoinsByType(CoinType type) {
    return db.query(
      DatabaseTables.coins,
      where: '${DatabaseTables.type} = ?',
      whereArgs: [type.name],
    );
  }

  Future<List<Map<String, dynamic>>> getAllCoinsByCountry(
    CountryNames country,
  ) {
    return db.query(
      DatabaseTables.coins,
      where: '${DatabaseTables.country} = ?',
      whereArgs: [country.name],
    );
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

  // ON INIT ------------------------------------------------------------------------

  Future<void> insertInitialCoins(List<CoinModel> coins) async {
    for (var coin in coins) {
      final Map<String, dynamic> coinMap = {
        DatabaseTables.id: coin.id,
        DatabaseTables.type: coin.type.name,
        DatabaseTables.image: coin.image,
        DatabaseTables.quantity: coin.quantity,
        DatabaseTables.periodStartDate: coin.periodStartDate,
        DatabaseTables.periodEndDate: coin.periodEndDate,
        DatabaseTables.description: coin.description,
        DatabaseTables.country: coin.country.name,
      };
      await db.insert(DatabaseTables.coins, coinMap);
    }
  }
}

import 'package:coinllector_app/models/country.dart';
import 'package:logging/logging.dart';
import 'package:sqflite/sqflite.dart';
import 'package:coinllector_app/models/coin.dart';
import '../core/database_tables.dart';

class CoinRepository {
  final Database db;
  final _log = Logger('COIN_REPOSITORY');

  CoinRepository(this.db);

  Future<List<Coin>> getCoinsByType(CoinType type) async {
    final typeString = type.name;

    final data = await db.query(
      DatabaseTables.coins,
      where: '${DatabaseTables.type} = ?',
      whereArgs: [typeString],
    );

    _log.info('Found ${data.length} coins matching type: $typeString');

    return data.map((e) => Coin.fromMap(e)).toList();
  }

  Future<List<Coin>> getCoinsByCountry(CountryNames country) async {
    final countryString = country.name;

    final data = await db.query(
      DatabaseTables.coins,
      where: '${DatabaseTables.country} = ?',
      whereArgs: [countryString],
    );

    _log.info('Found ${data.length} coins matching country: $countryString');

    return data.map((e) => Coin.fromMap(e)).toList();
  }

  Future<void> insertInitialCoins(List<Coin> coins) async {
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

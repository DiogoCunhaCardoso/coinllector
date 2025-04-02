import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/domain/interfaces/coin_interface.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:logging/logging.dart';
import 'package:sqflite/sqflite.dart';
import 'package:coinllector_app/data/models/coin_model.dart';
import '../local/database/database_tables.dart';

class CoinRepository implements ICoinRepository {
  final Database db;
  final _log = Logger('COIN_REPOSITORY');

  CoinRepository(this.db);

  // FILTERS ----------------------------------------------------

  @override
  Future<List<Coin>> getCoinsByType(CoinType type) async {
    final typeString = type.name;

    final data = await db.query(
      DatabaseTables.coins,
      where: '${DatabaseTables.type} = ?',
      whereArgs: [typeString],
    );

    _log.info('Found ${data.length} coins matching type: $typeString');

    return data.map((e) {
      final coinModel = CoinModel.fromMap(e);
      return coinModel.toEntity(); // Convert to Coin
    }).toList();
  }

  @override
  Future<List<Coin>> getCoinsByCountry(CountryNames country) async {
    final countryString = country.name;

    final data = await db.query(
      DatabaseTables.coins,
      where: '${DatabaseTables.country} = ?',
      whereArgs: [countryString],
    );

    _log.info('Found ${data.length} coins matching country: $countryString');

    return data.map((e) {
      final coinModel = CoinModel.fromMap(e);
      return coinModel.toEntity(); // Convert to Coin
    }).toList();
  }

  // COUNT ------------------------------------------------------

  @override
  Future<int> getCoinCount() async {
    final result = await db.rawQuery(
      'SELECT COUNT(*) FROM ${DatabaseTables.coins}',
    );
    return Sqflite.firstIntValue(result) ?? 0;
  }

  // INSERT ------------------------------------------------------

  @override
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

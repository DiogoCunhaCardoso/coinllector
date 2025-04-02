import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/domain/interfaces/coin_interface.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/utils/result.dart';
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
  Future<Result<List<Coin>>> getCoinsByType(CoinType type) async {
    try {
      final typeString = type.name;
      final data = await db.query(
        DatabaseTables.coins,
        where: '${DatabaseTables.type} = ?',
        whereArgs: [typeString],
      );

      _log.info('Found ${data.length} coins matching type: $typeString');

      final coins = data.map((e) => CoinModel.fromMap(e).toEntity()).toList();
      return Result.success(coins);
    } catch (e) {
      return Result.error(Exception('Failed to fetch coins by type: $e'));
    }
  }

  @override
  Future<Result<List<Coin>>> getCoinsByCountry(CountryNames country) async {
    try {
      final countryString = country.name;

      final data = await db.query(
        DatabaseTables.coins,
        where: '${DatabaseTables.country} = ?',
        whereArgs: [countryString],
      );

      _log.info('Found ${data.length} coins matching country: $countryString');
      final coins = data.map((e) => CoinModel.fromMap(e).toEntity()).toList();
      return Result.success(coins);
    } catch (e) {
      return Result.error(Exception('Failed to fetch coins by country: $e'));
    }
  }

  // COUNT ------------------------------------------------------

  @override
  Future<Result<int>> getCoinCount() async {
    try {
      final result = await db.rawQuery(
        'SELECT COUNT(*) FROM ${DatabaseTables.coins}',
      );
      final count = Sqflite.firstIntValue(result) ?? 0;
      return Result.success(count);
    } catch (e) {
      return Result.error(Exception('Failed to count coins: $e'));
    }
  }

  // INSERT ------------------------------------------------------

  @override
  Future<Result<void>> insertInitialCoins(List<CoinModel> coins) async {
    try {
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
      return Result.success(null);
    } catch (e) {
      return Result.error(Exception('Failed to insert initial coins: $e'));
    }
  }
}

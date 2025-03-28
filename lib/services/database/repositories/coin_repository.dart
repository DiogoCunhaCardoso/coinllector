import 'package:coinllector_app/services/data/coins_data.dart';
import 'package:logging/logging.dart';
import 'package:sqflite/sqflite.dart';
import 'package:coinllector_app/models/coin.dart';
import '../core/database_tables.dart';

class CoinRepository {
  final Database db;
  final _log = Logger('COIN_REPOSITORY');

  CoinRepository(this.db);

  Future<List<Map<String, dynamic>>> getCoinsByType(CoinType type) async {
    final typeString = type.name; // Ensure this matches database storage
    _log.info('Querying coins with type: $typeString');

    // Log all coin table columns for debugging
    final columns = await db.query(
      DatabaseTables.coins,
      columns: ['id', 'type', 'image', 'country'],
    );
    _log.info('All coin table entries: $columns');

    final data = await db.query(
      DatabaseTables.coins,
      where: '${DatabaseTables.type} = ?',
      whereArgs: [typeString],
    );

    _log.info('Found ${data.length} coins matching type: $typeString');

    // Log detailed coin data for verification
    for (var coin in data) {
      _log.info('Matching coin details: $coin');
    }

    return data
        .map((e) => {'image': e[DatabaseTables.image], 'type': typeString})
        .toList();
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

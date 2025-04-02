import 'package:coinllector_app/data/local/database/database_service.dart';
import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:logging/logging.dart';

class StatisticsProvider {
  final DatabaseService _database;
  final Logger _log = Logger('STATISTICS_PROVIDER');

  StatisticsProvider(this._database);

  Future<StatisticsData> fetchStatisticsData() async {
    try {
      // Fetch all data in parallel
      final results = await Future.wait([
        _fetchCoinsByType(),
        _fetchCoinsByCountry(),
        _database.userCoinRepository.getOwnedCoinsCountByType(),
        _database.userCoinRepository.getOwnedCoinsCountByCountry(),
      ]);

      return StatisticsData(
        coinsByType: results[0] as Map<CoinType, List<Coin>>,
        coinsByCountry: results[1] as Map<CountryNames, List<Coin>>,
        ownedByType: results[2] as Map<CoinType, int>,
        ownedByCountry: results[3] as Map<CountryNames, int>,
      );
    } catch (e) {
      _log.severe("Error loading statistics data: $e");
      rethrow;
    }
  }

  Future<Map<CoinType, List<Coin>>> _fetchCoinsByType() async {
    final data = <CoinType, List<Coin>>{};
    for (final type in CoinType.values) {
      final coins = await _database.coinRepository.getCoinsByType(type);
      data[type] = coins;
    }
    return data;
  }

  Future<Map<CountryNames, List<Coin>>> _fetchCoinsByCountry() async {
    final data = <CountryNames, List<Coin>>{};
    for (final country in CountryNames.values) {
      final coins = await _database.coinRepository.getCoinsByCountry(country);
      data[country] = coins;
    }
    return data;
  }
}

class StatisticsData {
  final Map<CoinType, List<Coin>> coinsByType;
  final Map<CountryNames, List<Coin>> coinsByCountry;
  final Map<CoinType, int> ownedByType;
  final Map<CountryNames, int> ownedByCountry;

  StatisticsData({
    required this.coinsByType,
    required this.coinsByCountry,
    required this.ownedByType,
    required this.ownedByCountry,
  });
}

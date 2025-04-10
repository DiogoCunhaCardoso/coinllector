import 'package:coinllector_app/data/datasources/local/database/database_service.dart';
import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/utils/result.dart';
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
        _fetchOwnedCoinsByType(),
        _fetchOwnedCoinsByCountry(),
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
      final result = await _database.coinRepository.getAllCoinsByType(type);
      if (result is Success<List<Coin>>) {
        data[type] = result.value;
      } else if (result is Error<List<Coin>>) {
        _log.severe(
          "Error fetching coins by type ${type.name}: ${result.error}",
        );
      }
    }
    return data;
  }

  Future<Map<CountryNames, List<Coin>>> _fetchCoinsByCountry() async {
    final data = <CountryNames, List<Coin>>{};
    for (final country in CountryNames.values) {
      final result = await _database.coinRepository.getAllCoinsByCountry(
        country,
      );
      if (result is Success<List<Coin>>) {
        data[country] = result.value;
      } else if (result is Error<List<Coin>>) {
        _log.severe(
          "Error fetching coins by country ${country.name}: ${result.error}",
        );
      }
    }
    return data;
  }

  Future<Map<CoinType, int>> _fetchOwnedCoinsByType() async {
    final result =
        await _database.userCoinRepository.getOwnedCoinsCountByType();
    if (result is Success<Map<CoinType, int>>) {
      return result.value;
    } else if (result is Error<Map<CoinType, int>>) {
      _log.severe("Error fetching owned coins by type: ${result.error}");
    }
    return {}; // Return empty map if there's an error
  }

  Future<Map<CountryNames, int>> _fetchOwnedCoinsByCountry() async {
    final result = await _database.userCoinRepository.getUserCoinsByCountry();
    if (result is Success<Map<CountryNames, int>>) {
      return result.value;
    } else if (result is Error<Map<CountryNames, int>>) {
      _log.severe("Error fetching owned coins by country: ${result.error}");
    }
    return {}; // Return empty map if there's an error
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

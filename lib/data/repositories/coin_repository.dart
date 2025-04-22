import 'package:coinllector_app/data/datasources/remote/coin_remote_datasource.dart';
import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/domain/interfaces/coin_interface.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:logging/logging.dart';
import 'package:coinllector_app/data/models/coin_model.dart';

class CoinRepositoryImpl implements ICoinRepository {
  final CoinRemoteDataSource localDataSource;
  final _log = Logger('COIN_REPOSITORY');

  CoinRepositoryImpl(this.localDataSource);

  @override
  Future<Result<List<Coin>>> getAllCoinsByType(CoinType type) async {
    try {
      final data = await localDataSource.getAllCoinsByType(type);
      _log.info('Found ${data.length} coins matching type: ${type.name}');
      final coins = data.map((e) => CoinModel.fromMap(e).toEntity()).toList();
      return Result.success(coins);
    } catch (e) {
      return Result.error(Exception('Failed to fetch coins by type: $e'));
    }
  }

  @override
  Future<Result<List<Coin>>> getAllCoinsByCountry(CountryNames country) async {
    try {
      final data = await localDataSource.getAllCoinsByCountry(country);
      _log.info('Found ${data.length} coins matching country: ${country.name}');
      final coins = data.map((e) => CoinModel.fromMap(e).toEntity()).toList();
      return Result.success(coins);
    } catch (e) {
      return Result.error(Exception('Failed to fetch coins by country: $e'));
    }
  }

  @override
  Future<Result<Map<CoinType, List<Coin>>>> getAllCoinsByTypeMap() async {
    try {
      final Map<CoinType, List<Coin>> result = {};

      for (final type in CoinType.values) {
        final coinsResult = await getAllCoinsByType(type);
        switch (coinsResult) {
          case Success(value: final coins):
            result[type] = coins;
            break;
          case Error(error: final e):
            _log.warning('Error fetching coins by type: ${type.name}');
            return Result.error(e);
        }
      }

      return Result.success(result);
    } catch (e) {
      return Result.error(Exception('Failed to get coins by type map: $e'));
    }
  }

  @override
  Future<Result<Map<CountryNames, List<Coin>>>>
  getAllCoinsByCountryMap() async {
    try {
      final Map<CountryNames, List<Coin>> result = {};

      for (final country in CountryNames.values) {
        final coinsResult = await getAllCoinsByCountry(country);
        switch (coinsResult) {
          case Success(value: final coins):
            result[country] = coins;
            break;
          case Error(error: final e):
            _log.warning('Error fetching coins by country: ${country.name}');
            return Result.error(e);
        }
      }

      return Result.success(result);
    } catch (e) {
      return Result.error(Exception('Failed to get coins by country map: $e'));
    }
  }

  // COUNT -------------------------------------------------------------------------

  @override
  Future<Result<int>> getCoinCount() async {
    try {
      final count = await localDataSource.getCoinCount();
      return Result.success(count);
    } catch (e) {
      return Result.error(Exception('Failed to count coins: $e'));
    }
  }

  @override
  Future<Result<int>> getCountryTotalCoinCount(CountryNames country) async {
    try {
      final count = await localDataSource.getCountryTotalCoinCount(country);
      _log.info('Found $count coins for country: ${country.name}');
      return Result.success(count);
    } catch (e) {
      return Result.error(Exception('Failed to get country coin count: $e'));
    }
  }

  // ON INIT ------------------------------------------------------------------------

  @override
  Future<Result<void>> insertInitialCoins(List<CoinModel> coins) async {
    try {
      await localDataSource.insertInitialCoins(coins);
      return Result.success(null);
    } catch (e) {
      return Result.error(Exception('Failed to insert initial coins: $e'));
    }
  }
}

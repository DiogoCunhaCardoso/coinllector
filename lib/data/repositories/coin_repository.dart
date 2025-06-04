import 'package:coinllector_app/data/datasources/remote/coin_remote_datasource.dart';
import 'package:coinllector_app/data/mappers/coin_mapper.dart';
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

  // GET ---------------------------------------------------------------------------

  @override
  Future<Result<List<Coin>>> getAllCoinsByType(
    CoinType type, {
    String? startDate,
  }) async {
    try {
      final data = await localDataSource.getAllCoinsByType(
        type,
        startDate: startDate,
      );

      _log.info(
        'Found ${data.length} coins matching type: ${type.name}'
        '${startDate != null ? ' from year $startDate' : ''}',
      );

      final coins = data.map((el) => CoinMapper.toEntity(el)).toList();
      return Result.success(coins);
    } catch (e, stackTrace) {
      _log.severe('Error loading getAllCoinsByType', e, stackTrace);
      return Result.error(Exception('Failed to fetch coins by type.'));
    }
  }

  @override
  Future<Result<List<Coin>>> getAllCoinsByCountry(CountryNames country) async {
    try {
      final data = await localDataSource.getAllCoinsByCountry(country);
      _log.info('Found ${data.length} coins matching country: ${country.name}');
      final coins = data.map((el) => CoinMapper.toEntity(el)).toList();
      return Result.success(coins);
    } catch (e, stackTrace) {
      _log.severe('Error loading getAllCoinsByCountry', e, stackTrace);
      return Result.error(Exception('Failed to fetch coins by country.'));
    }
  }

  @override
  Future<Result<Coin?>> getCoinById(int id) async {
    try {
      final coinModel = await localDataSource.getCoinById(id);

      if (coinModel == null) {
        _log.info('No coin found with id: $id');
        return Result.success(null);
      }

      _log.info('Found coin with id: $id');
      final coin = CoinMapper.toEntity(coinModel);
      return Result.success(coin);
    } catch (e, stackTrace) {
      _log.severe('Error getting coin by id: $id', e, stackTrace);
      return Result.error(Exception('Failed to fetch coin by id.'));
    }
  }

  // COUNT -------------------------------------------------------------------------

  @override
  Future<Result<int>> getTotalCoinCount({
    List<CountryNames>? excludeCountries,
  }) async {
    try {
      final count = await localDataSource.getCoinCount(
        excludeCountries: excludeCountries,
      );
      return Result.success(count);
    } catch (e, stackTrace) {
      _log.severe('Error loading getTotalCoinCount', e, stackTrace);
      return Result.error(Exception('Failed to count coins.'));
    }
  }

  @override
  Future<Result<int>> getCountryTotalCoinCount(CountryNames country) async {
    try {
      final count = await localDataSource.getCountryTotalCoinCount(country);
      _log.info('Found $count coins for country: ${country.name}');
      return Result.success(count);
    } catch (e, stackTrace) {
      _log.severe('Error loading getCountryTotalCoinCount', e, stackTrace);
      return Result.error(Exception('Failed to get country coin count.'));
    }
  }

  @override
  Future<Result<int>> getTypeTotalCoinCount(
    CoinType type, {
    String? startDate,
  }) async {
    try {
      final count = await localDataSource.getTypeTotalCoinCount(
        type,
        startDate: startDate,
      );
      _log.info(
        'Found $count coins for type: ${type.name}'
        '${startDate != null ? ' from year $startDate' : ''}',
      );
      return Result.success(count);
    } catch (e, stackTrace) {
      _log.severe('Error loading getTypeTotalCoinCount', e, stackTrace);
      return Result.error(Exception('Failed to get type coin count.'));
    }
  }

  // DATABASE ------------------------------------------------------------------------

  @override
  Future<Result<void>> insertInitialCoins(List<CoinModel> coins) async {
    try {
      await localDataSource.insertInitialCoins(coins);
      return Result.success(null);
    } catch (e, stackTrace) {
      _log.severe('Error loading insertInitialCoins', e, stackTrace);
      return Result.error(Exception('Failed to insert initial coins.'));
    }
  }
}

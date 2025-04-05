import 'package:coinllector_app/data/datasources/remote/coin_local_datasource.dart';
import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/domain/interfaces/coin_interface.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:logging/logging.dart';
import 'package:coinllector_app/data/models/coin_model.dart';

class CoinRepositoryImpl implements ICoinRepository {
  final CoinLocalDataSource localDataSource;
  final _log = Logger('COIN_REPOSITORY');

  CoinRepositoryImpl(this.localDataSource);

  @override
  Future<Result<List<Coin>>> getCoinsByType(CoinType type) async {
    try {
      final data = await localDataSource.getCoinsByType(type);
      _log.info('Found ${data.length} coins matching type: ${type.name}');
      final coins = data.map((e) => CoinModel.fromMap(e).toEntity()).toList();
      return Result.success(coins);
    } catch (e) {
      return Result.error(Exception('Failed to fetch coins by type: $e'));
    }
  }

  @override
  Future<Result<List<Coin>>> getCoinsByCountry(CountryNames country) async {
    try {
      final data = await localDataSource.getCoinsByCountry(country);
      _log.info('Found ${data.length} coins matching country: ${country.name}');
      final coins = data.map((e) => CoinModel.fromMap(e).toEntity()).toList();
      return Result.success(coins);
    } catch (e) {
      return Result.error(Exception('Failed to fetch coins by country: $e'));
    }
  }

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
  Future<Result<void>> insertInitialCoins(List<CoinModel> coins) async {
    try {
      await localDataSource.insertInitialCoins(coins);
      return Result.success(null);
    } catch (e) {
      return Result.error(Exception('Failed to insert initial coins: $e'));
    }
  }
}

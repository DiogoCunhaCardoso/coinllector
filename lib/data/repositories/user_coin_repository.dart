import 'package:coinllector_app/domain/interfaces/user_coin_interface.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/shared/enums/coin_quality_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:logging/logging.dart';
import '../datasources/remote/user_coin_remote_datasource.dart';

class UserCoinRepositoryImpl implements IUserCoinRepository {
  final _log = Logger('USER_COIN_REPOSITORY');
  final UserCoinRemoteDataSource dataSource;

  UserCoinRepositoryImpl(this.dataSource);

  /// Adds a coin to the user's collection.
  @override
  Future<Result<void>> addCoin(int coinId) async {
    try {
      await dataSource.insertCoin(coinId);
      _log.info("Added coin $coinId");
      return Result.success(null);
    } catch (e) {
      return Result.error(Exception('Failed to add coin: $e'));
    }
  }

  /// Removes a coin from the user's collection.
  @override
  Future<Result<void>> removeCoin(int coinId) async {
    try {
      await dataSource.removeCoin(coinId);
      _log.info("Removed coin with ID: $coinId");
      return Result.success(null);
    } catch (e) {
      return Result.error(Exception('Failed to remove coin: $e'));
    }
  }

  /// Uses [addCoin] and [removeCoin] to toggle owership
  @override
  Future<Result<bool>> toggleCoinOwnership(int coinId) async {
    try {
      final ownershipResult = await userOwnsCoin(coinId);

      if (ownershipResult is Error) {
        return Result.error(Exception('Failed to check ownership'));
      }

      final isOwned = (ownershipResult as Success<bool>).value;

      if (isOwned) {
        final removeResult = await removeCoin(coinId);
        if (removeResult is Error) {
          return Result.error(
            Exception('Failed to remove coin: ${removeResult.error}'),
          );
        }
        _log.info("Toggled OFF (removed) coin $coinId");
        return Result.success(false); // Coin was removed
      } else {
        final addResult = await addCoin(coinId);
        if (addResult is Error) {
          return Result.error(
            Exception('Failed to add coin: ${addResult.error}'),
          );
        }
        _log.info("Toggled ON (added) coin $coinId");
        return Result.success(true); // Coin was added
      }
    } catch (e) {
      return Result.error(Exception('Failed to toggle coin ownership: $e'));
    }
  }

  /// Gets the quality of a specific coin in the user's collection
  @override
  Future<Result<CoinQuality?>> getCoinQuality(int coinId) async {
    try {
      final qualityString = await dataSource.getCoinQuality(coinId);

      if (qualityString == null) {
        return Result.success(null);
      }

      final quality = CoinQuality.values.firstWhere(
        (e) => e.name == qualityString,
        orElse: () => throw FormatException('Invalid quality value'),
      );

      return Result.success(quality);
    } on FormatException catch (e) {
      _log.warning('Invalid quality format for coin $coinId: ${e.message}');
      return Result.error(Exception('Invalid quality data'));
    } catch (e, stackTrace) {
      _log.severe('Failed to fetch quality for coin $coinId', e, stackTrace);
      return Result.error(Exception('Failed to retrieve quality'));
    }
  }

  /// Updates a coin quality from an already added coin (pro user only)
  @override
  Future<Result<void>> updateCoinQuality(
    int coinId,
    CoinQuality? quality,
  ) async {
    try {
      await dataSource.updateCoinQuality(coinId, quality);
      _log.info("Updated quality for coin $coinId to $quality");
      return Result.success(null);
    } catch (e) {
      return Result.error(Exception('Failed to update coin quality: $e'));
    }
  }

  /// Checks if the user owns a specific coin.
  @override
  Future<Result<bool>> userOwnsCoin(int coinId) async {
    try {
      final owns = await dataSource.userOwnsCoin(coinId);
      return Result.success(owns);
    } catch (e) {
      return Result.error(Exception('Failed to check if user owns coin: $e'));
    }
  }

  /// Retrieves a list of all the coins (IDs) the user owns.
  @override
  Future<Result<List<int>>> getOwnedCoins() async {
    try {
      final ownedCoins = await dataSource.getOwnedCoins();
      return Result.success(ownedCoins);
    } catch (e) {
      return Result.error(Exception('Failed to fetch owned coins: $e'));
    }
  }

  /// Returns the total count of coins the user owns.
  @override
  Future<Result<int>> getOwnedCoinsCount() async {
    try {
      final count = await dataSource.getOwnedCoinCount();
      return Result.success(count);
    } catch (e) {
      return Result.error(Exception('Failed to fetch owned coin count: $e'));
    }
  }

  /// Returns the count of coins the user owns of a specific type.
  @override
  Future<Result<int>> getUserCoinsByType(CoinType type) async {
    try {
      final count = await dataSource.getOwnedCoinCountByType(type);
      return Result.success(count);
    } catch (e) {
      return Result.error(Exception('Failed to fetch count for $type: $e'));
    }
  }

  /// Retrieves the count of coins the user owns, grouped by country.
  @override
  Future<Result<Map<CountryNames, int>>> getUserCoinsByCountry() async {
    try {
      final result = await dataSource.getCountGroupedByCountry();
      final counts = {for (var country in CountryNames.values) country: 0};
      for (var row in result) {
        try {
          final country = CountryNames.values.byName(row['country'] as String);
          counts[country] = row['count'] as int;
        } catch (e) {
          _log.warning('Error parsing country: $e');
        }
      }
      return Result.success(counts);
    } catch (e) {
      return Result.error(
        Exception('Failed to fetch owned coins by country: $e'),
      );
    }
  }

  // COUNT -----------------------------------------------------------------------------------------------

  @override
  Future<Result<int>> getUserCoinCountByCountry(CountryNames country) async {
    try {
      final count = await dataSource.getOwnedCoinCountByCountry(country.name);
      return Result.success(count);
    } catch (e) {
      return Result.error(
        Exception('Failed to fetch coin count for country $country: $e'),
      );
    }
  }
}

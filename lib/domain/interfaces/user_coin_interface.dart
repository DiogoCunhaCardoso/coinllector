import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/shared/enums/coin_quality_enum.dart';
import 'package:coinllector_app/utils/result.dart';

abstract class IUserCoinRepository {
  /// Adds a coin to the user's collection.
  Future<Result<void>> addCoin(int coinId);

  /// Removes a coin from the user's collection.
  Future<Result<void>> removeCoin(int coinId);

  /// Uses [addCoin] and [removeCoin] to toggle owership
  Future<Result<bool>> toggleCoinOwnership(int coinId);

  /// Gets the quality of a specific coin in the user's collection
  Future<Result<CoinQuality?>> getCoinQuality(int coinId);

  /// Updates a coin quality from an already added coin (pro user only)
  Future<Result<void>> updateCoinQuality(int coinId, CoinQuality? quality);

  /// Checks if the user owns a specific coin.
  Future<Result<bool>> userOwnsCoin(int coinId);

  /// Retrieves a list of all the coins (IDs) the user owns.
  Future<Result<List<int>>> getOwnedCoins();

  /// Returns the total count of coins the user owns.
  Future<Result<int>> getOwnedCoinsCount();

  /// Returns the count of coins the user owns of a specific type.
  Future<Result<int>> getUserCoinsByType(CoinType type);

  /// Retrieves the count of coins the user owns, grouped by country.
  Future<Result<Map<CountryNames, int>>> getUserCoinsByCountry();

  /// Returns the total count of coins the user owns of a specifed country.
  Future<Result<int>> getUserCoinCountByCountry(CountryNames country);
}

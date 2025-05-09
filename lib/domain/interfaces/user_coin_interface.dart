import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/shared/enums/coin_quality_enum.dart';
import 'package:coinllector_app/utils/result.dart';

abstract class IUserCoinRepository {
  // MODIFY COLLECTION --------------------------------------------------------

  /// Adds a coin to the user's collection.
  Future<Result<void>> addCoin(int coinId);

  /// Removes a coin from the user's collection.
  Future<Result<void>> removeCoin(int coinId);

  /// Uses [addCoin] and [removeCoin] to toggle owership
  Future<Result<bool>> toggleCoinOwnership(int coinId);

  // QUALITY ------------------------------------------------------------------

  /// Gets the quality of a specific coin in the user's collection
  Future<Result<CoinQuality?>> getCoinQuality(int coinId);

  /// Updates a coin quality from an already added coin
  Future<Result<void>> updateCoinQuality(int coinId, CoinQuality? quality);

  // OWNERSHIP QUERIES --------------------------------------------------------

  /// Checks if the user owns a specific coin.
  Future<Result<bool>> userOwnsCoin(int coinId);

  /// Retrieves a list of all the coins (IDs) the user owns.
  Future<Result<List<int>>> getOwnedCoins();

  // COUNT QUERIES ------------------------------------------------------------

  /// Returns the total count of coins the user owns.
  Future<Result<int>> getOwnedCoinsCount({
    List<CountryNames>? excludeCountries,
  });

  /// Returns the total count of coins the user owns of a specifed country.
  Future<Result<int>> getUserCoinCountByCountry(CountryNames country);

  /// Returns the total count of coins the user owns of a specifed type.
  Future<Result<int>> getUserCoinCountByType(
    CoinType type, {
    List<CountryNames>? excludeCountries,
    String? startDate,
  });

  /// Retrieves the count of coins the user owns, grouped by type.
  Future<Result<Map<CoinType, int>>> getUserCoinsByType({
    List<CountryNames>? excludeCountries,
  });

  /// Retrieves the count of coins the user owns, grouped by country.
  Future<Result<Map<CountryNames, int>>> getUserCoinsByCountry();
}

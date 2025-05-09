import 'package:coinllector_app/data/models/coin_model.dart';
import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/utils/result.dart';

abstract class ICoinRepository {
  // GET --------------------------------------------------------------------

  /// Retrieves all coins of a specific type. (has a filter by year)
  Future<Result<List<Coin>>> getAllCoinsByType(
    CoinType type, {
    String? startDate,
  });

  /// Retrieves all coins from a specific country.
  Future<Result<List<Coin>>> getAllCoinsByCountry(CountryNames country);

  // Gets a coin by ID
  Future<Result<Coin?>> getCoinById(int id);

  // COUNT --------------------------------------------------------------------

  /// Returns the total count of coins in the repository.
  Future<Result<int>> getTotalCoinCount({List<CountryNames>? excludeCountries});

  /// Gets the total number of coins for a specific type (has a filter by year)
  Future<Result<int>> getTypeTotalCoinCount(CoinType type, {String? startDate});

  /// Gets the total number of coins for a specific country
  Future<Result<int>> getCountryTotalCoinCount(CountryNames country);

  // INSERT -------------------------------------------------------------------

  /// Inserts a list of initial coins into the repository.
  Future<Result<void>> insertInitialCoins(List<CoinModel> coins);
}

import 'package:coinllector_app/data/models/coin_model.dart';
import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/utils/result.dart';

abstract class ICoinRepository {
  /// Retrieves all coins of a specific type.
  Future<Result<List<Coin>>> getAllCoinsByType(CoinType type);

  /// Retrieves all coins from a specific country.
  Future<Result<List<Coin>>> getAllCoinsByCountry(CountryNames country);

  /// Retrieves all coins grouped by their type.
  Future<Result<Map<CoinType, List<Coin>>>> getAllCoinsByTypeMap();

  /// Retrieves all coins grouped by their country.
  Future<Result<Map<CountryNames, List<Coin>>>> getAllCoinsByCountryMap();

  // COUNT --------------------------------------------------------------------

  /// Returns the total count of coins in the repository.
  Future<Result<int>> getCoinCount();

  /// Gets the total number of coins for a specific country
  Future<Result<int>> getCountryTotalCoinCount(CountryNames country);

  /// Inserts a list of initial coins into the repository.
  Future<Result<void>> insertInitialCoins(List<CoinModel> coins);
}

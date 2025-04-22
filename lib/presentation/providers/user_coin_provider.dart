// lib/presentation/providers/user_coin_provider.dart
import 'package:coinllector_app/domain/usecases/user_coin/get_coin_quality.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coin_count.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coin_count_by_country.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coins.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coin_count_by_country_map.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coin_count_by_type.dart';
import 'package:coinllector_app/domain/usecases/user_coin/check_if_user_owns_coin.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_statistics_sorted_by_country.dart';
import 'package:coinllector_app/domain/usecases/user_coin/toggle_coin_ownership.dart';
import 'package:coinllector_app/domain/usecases/user_coin/update_quality_of_owned_coin.dart';
import 'package:coinllector_app/presentation/model/country_coin_stats.dart';
import 'package:coinllector_app/presentation/providers/country_provider.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/shared/enums/coin_quality_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

class UserCoinProvider extends ChangeNotifier {
  static final _log = Logger("USER_COIN_PROVIDER");

  // USE CASES --------------------------------------

  final ToggleCoinOwnershipUseCase _toggleCoinOwnershipUseCase;
  final GetCoinQualityUseCase _getCoinQualityUseCase;
  final UpdateQualityOfOwnedCoinUseCase _updateQualityOfOwnedCoinUseCase;
  final GetOwnedCoinsUseCase _getOwnedCoinsUseCase;
  final GetOwnedCoinCountUseCase _getOwnedCoinCountUseCase;
  final CheckIfUserOwnsCoinUseCase _userOwnsCoinUseCase;
  final GetOwnedCoinCountForTypeUseCase _getOwnedCoinsByTypeUseCase;
  final GetOwnedCoinsByCountryMapUseCase _getOwnedCoinsByCountryUseCase;
  final GetUserCoinCountByCountryUseCase _getUserCoinCountByCountryUseCase;
  final GetStatisticsSortedByCountryUseCase
  _getStatisticsSortedByCountryUseCase;

  Set<int> _ownedCoinIds = {};

  bool _isLoading = false;

  Map<CountryNames, int> _coinsByCountry = {};

  List<CountryCoinStats>? _topCountryStatsCache;

  UserCoinProvider({
    required ToggleCoinOwnershipUseCase toggleCoinOwnershipUseCase,
    required GetCoinQualityUseCase getCoinQualityUseCase,
    required UpdateQualityOfOwnedCoinUseCase updateQualityOfOwnedCoinUseCase,
    required GetOwnedCoinsUseCase getOwnedCoinsUseCase,
    required GetOwnedCoinCountUseCase getOwnedCoinCountUseCase,
    required CheckIfUserOwnsCoinUseCase userOwnsCoinUseCase,
    required GetOwnedCoinCountForTypeUseCase getOwnedCoinsCountByTypeUseCase,
    required GetOwnedCoinsByCountryMapUseCase getOwnedCoinsByCountryUseCase,
    required GetUserCoinCountByCountryUseCase getUserCoinCountByCountryUseCase,
    required GetStatisticsSortedByCountryUseCase
    getStatisticsSortedByCountryUseCase,
  }) : _toggleCoinOwnershipUseCase = toggleCoinOwnershipUseCase,
       _getCoinQualityUseCase = getCoinQualityUseCase,
       _updateQualityOfOwnedCoinUseCase = updateQualityOfOwnedCoinUseCase,
       _getOwnedCoinsUseCase = getOwnedCoinsUseCase,
       _getOwnedCoinCountUseCase = getOwnedCoinCountUseCase,
       _userOwnsCoinUseCase = userOwnsCoinUseCase,
       _getOwnedCoinsByTypeUseCase = getOwnedCoinsCountByTypeUseCase,
       _getOwnedCoinsByCountryUseCase = getOwnedCoinsByCountryUseCase,
       _getUserCoinCountByCountryUseCase = getUserCoinCountByCountryUseCase,
       _getStatisticsSortedByCountryUseCase =
           getStatisticsSortedByCountryUseCase;

  // Getters ----------------------------------------------------------------------
  Set<int> get ownedCoinIds => _ownedCoinIds;

  bool get isLoading => _isLoading;
  Map<CountryNames, int> get coinsByCountry => _coinsByCountry;

  bool isOwned(int coinId) => _ownedCoinIds.contains(coinId);

  List<CountryCoinStats>? get topCountryStats => _topCountryStatsCache;

  // ====================== PUBLIC METHODS ====================== //

  Future<void> init() async {
    _isLoading = true;
    notifyListeners();

    await _loadOwnedCoins();
    await _loadCoinCount();
    await _loadCoinsByCountry();
    await _loadTopCountryStats();

    _isLoading = false;
    notifyListeners();
  }

  Future<void> _loadOwnedCoins() async {
    final result = await _getOwnedCoinsUseCase(NoParams(null));

    switch (result) {
      case Success(value: final coins):
        _ownedCoinIds = coins.toSet();
        _log.info('Loaded ${_ownedCoinIds.length} owned coins');
      case Error(error: final e):
        _log.severe('Error loading owned coins: $e');
    }
  }

  /// Get top countries based on coin ownership
  /// Returns a list of country data objects sorted by most owned coins
  /// //TODO: use the singleton, do not instantiate it inside
  List<dynamic> getTopCountriesByCoins(
    CountryProvider countryProvider, [
    int limit = 3,
  ]) {
    // Get all countries from the country provider
    final allCountries = countryProvider.countries;

    // Sort countries based on the number of owned coins (descending)
    final sortedCountries = List.of(allCountries);
    sortedCountries.sort((a, b) {
      final aCount = _coinsByCountry[a.name] ?? 0;
      final bCount = _coinsByCountry[b.name] ?? 0;
      return bCount.compareTo(aCount); // Sort descending
    });

    // Take the top countries or fewer if there aren't enough
    return sortedCountries.take(limit).toList();
  }

  // ==== GET ALL OWNED COIN COUNT ==== // ✅

  int _ownedCoinCount = 0;
  int get ownedCoinCount => _ownedCoinCount;

  Future<void> _loadCoinCount() async {
    final result = await _getOwnedCoinCountUseCase(NoParams(null));

    switch (result) {
      case Success(value: final count):
        _ownedCoinCount = count;
        _log.info('Loaded owned coin count: $_ownedCoinCount');
      case Error(error: final e):
        _log.severe('Error loading coin count: $e');
    }
  }

  // ==== GET OWNED COIN COUNT BY TYPE ==== //

  int _coinsByFilterCount = 0;
  int get coinsByFilterCount => _coinsByFilterCount;

  Future<void> loadCoinsByType(CoinType type) async {
    final result = await _getOwnedCoinsByTypeUseCase(Params(type));

    switch (result) {
      case Success(value: final count):
        _coinsByFilterCount = count;
        _log.info('Loaded count for ${type.name}: $count');
      case Error(error: final e):
        _coinsByFilterCount = 0;
        _log.severe('Error loading count for ${type.name}', e);
    }
    notifyListeners();
  }

  Future<void> _loadCoinsByCountry() async {
    final result = await _getOwnedCoinsByCountryUseCase(NoParams(null));

    switch (result) {
      case Success(value: final byCountry):
        _coinsByCountry = byCountry;
        _log.info('Loaded coins by country');
      case Error(error: final e):
        _log.severe('Error loading coins by country: $e');
    }
  }

  Future<bool> toggleCoinOwnership(int coinId) async {
    final result = await _toggleCoinOwnershipUseCase(Params(coinId));

    switch (result) {
      case Success(value: final isNowOwned):
        // Update the local state based on the result
        if (isNowOwned) {
          _ownedCoinIds.add(coinId);
        } else {
          _ownedCoinIds.remove(coinId);
        }
        await refreshStatistics();
        return true; // Operation succeeded
      case Error(error: final e):
        _log.severe('Error toggling coin ownership: $e');
        return false; // Operation failed
    }
  }

  Future<CoinQuality?> getCoinQuality(int coinId) async {
    final result = await _getCoinQualityUseCase(Params(coinId));

    switch (result) {
      case Success(value: final quality):
        return quality;
      case Error():
        return null;
    }
  }

  Future<bool> updateCoinQuality(int coinId, CoinQuality quality) async {
    final updateParams = UpdateCoinQualityParams(coinId, quality);
    final result = await _updateQualityOfOwnedCoinUseCase(Params(updateParams));

    switch (result) {
      case Success():
        _log.info('Updated quality of coin $coinId to ${quality.name}');
        notifyListeners();
        return true;
      case Error(error: final e):
        _log.severe('Error updating coin quality: $e');
        return false;
    }
  }

  // -----------------------------------------------------------------------------------

  // Keep track of the current type being viewed
  CoinType? _currentViewType;

  // Method to set current view type
  void setCurrentViewType(CoinType type) {
    _currentViewType = type;
  }

  Future<void> refreshStatistics() async {
    await _loadCoinCount();
    await _loadCoinsByCountry();
    _topCountryStatsCache = null;

    // Refresh statistics
    await _loadTopCountryStats();

    // Also refresh the current type count if one is set
    if (_currentViewType != null) {
      await loadCoinsByType(_currentViewType!);
    }

    notifyListeners();
  }

  Future<bool> checkIfUserOwnsCoin(int coinId) async {
    final result = await _userOwnsCoinUseCase(Params(coinId));

    switch (result) {
      case Success(value: final owned):
        return owned;
      case Error(error: final e):
        _log.severe('Error checking if user owns coin: $e');
        return false;
    }
  }

  // COUNT -----------------------------------------------------------------------------
  //       BY COUNTRY ------------------------------------------------------------------

  Future<int> getOwnedCoinCountForCountry(CountryNames country) async {
    final result = await _getUserCoinCountByCountryUseCase(Params(country));

    switch (result) {
      case Success(value: final count):
        return count;
      case Error(error: final e):
        _log.severe('Failed to get coin count for $country: $e');
        return 0;
    }
  }

  //       BY TYPE ----------------------------------------------------------------------

  // ====================== PRIVATE METHODS ====================== //

  // FOR STATISTICS ---------------------------------------------------------------------

  /// Get Statistics sorted & by Country

  Future<void> _loadTopCountryStats() async {
    if (_topCountryStatsCache != null) return; // already loaded

    // Use NoParams since we're not passing any parameters
    final result = await _getStatisticsSortedByCountryUseCase(NoParams(null));
    switch (result) {
      case Success(value: final stats):
        _topCountryStatsCache = stats;
      case Error(error: final e):
        _log.severe('Error getting top country stats: $e');
        _topCountryStatsCache = [];
    }
    notifyListeners();
  }
}

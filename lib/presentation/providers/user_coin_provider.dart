import 'package:coinllector_app/domain/usecases/user_coin/get_coin_quality.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coin_count.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coin_count_by_country.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coin_count_by_type.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coins.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coin_count_by_country_map.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coin_count_by_type_map.dart';
import 'package:coinllector_app/domain/usecases/user_coin/check_if_user_owns_coin.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_statistics_sorted_by_country.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_statistics_sorted_by_type.dart';
import 'package:coinllector_app/domain/usecases/user_coin/toggle_coin_ownership.dart';
import 'package:coinllector_app/domain/usecases/user_coin/update_quality_of_owned_coin.dart';
import 'package:coinllector_app/presentation/model/coin_stats.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/shared/enums/coin_quality_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

/// Manages user coin data and provides it to the Presentation Layer
class UserCoinProvider extends ChangeNotifier {
  static final _log = Logger("USER_COIN_PROVIDER");

  // ---------------------------------------------------------------------------
  // Private Use Cases
  // ---------------------------------------------------------------------------

  final ToggleCoinOwnershipUseCase _toggleCoinOwnershipUseCase;
  final GetCoinQualityUseCase _getCoinQualityUseCase;
  final UpdateQualityOfOwnedCoinUseCase _updateQualityOfOwnedCoinUseCase;
  final GetOwnedCoinsUseCase _getOwnedCoinsUseCase;
  final GetOwnedCoinCountUseCase _getOwnedCoinCountUseCase;
  final CheckIfUserOwnsCoinUseCase _userOwnsCoinUseCase;
  final GetOwnedCoinsByCountryMapUseCase _getOwnedCoinsByCountryUseCase;
  final GetUserCoinCountByCountryUseCase _getUserCoinCountByCountryUseCase;
  final GetUserCoinCountByTypeUseCase _getUserCoinCountByTypeUseCase;
  final GetStatisticsSortedByTypeUseCase _getStatisticsSortedByTypeUseCase;
  final GetStatisticsSortedByCountryUseCase
  _getStatisticsSortedByCountryUseCase;

  UserCoinProvider({
    required ToggleCoinOwnershipUseCase toggleCoinOwnershipUseCase,
    required GetCoinQualityUseCase getCoinQualityUseCase,
    required UpdateQualityOfOwnedCoinUseCase updateQualityOfOwnedCoinUseCase,
    required GetOwnedCoinsUseCase getOwnedCoinsUseCase,
    required GetOwnedCoinCountUseCase getOwnedCoinCountUseCase,
    required CheckIfUserOwnsCoinUseCase userOwnsCoinUseCase,
    required GetOwnedCoinsByTypeMapUseCase getOwnedCoinsCountByTypeUseCase,
    required GetOwnedCoinsByCountryMapUseCase getOwnedCoinsByCountryUseCase,
    required GetUserCoinCountByCountryUseCase getUserCoinCountByCountryUseCase,
    required GetUserCoinCountByTypeUseCase getUserCoinCountByTypeUseCase,
    required GetStatisticsSortedByTypeUseCase getStatisticsSortedByTypeUseCase,
    required GetStatisticsSortedByCountryUseCase
    getStatisticsSortedByCountryUseCase,
  }) : _toggleCoinOwnershipUseCase = toggleCoinOwnershipUseCase,
       _getCoinQualityUseCase = getCoinQualityUseCase,
       _updateQualityOfOwnedCoinUseCase = updateQualityOfOwnedCoinUseCase,
       _getOwnedCoinsUseCase = getOwnedCoinsUseCase,
       _getOwnedCoinCountUseCase = getOwnedCoinCountUseCase,
       _userOwnsCoinUseCase = userOwnsCoinUseCase,
       _getOwnedCoinsByCountryUseCase = getOwnedCoinsByCountryUseCase,
       _getUserCoinCountByCountryUseCase = getUserCoinCountByCountryUseCase,
       _getUserCoinCountByTypeUseCase = getUserCoinCountByTypeUseCase,
       _getStatisticsSortedByTypeUseCase = getStatisticsSortedByTypeUseCase,
       _getStatisticsSortedByCountryUseCase =
           getStatisticsSortedByCountryUseCase;

  // ---------------------------------------------------------------------------
  // State
  // ---------------------------------------------------------------------------

  bool _isLoading = false;

  Set<int> _ownedCoinIds = {};
  Map<CountryNames, int> _coinsByCountry = {};

  List<CoinStats>? _topTypeStatsCache;
  List<CoinStats>? _topCountryStatsCache;

  // ---------------------------------------------------------------------------
  // Getters
  // ---------------------------------------------------------------------------

  Set<int> get ownedCoinIds => _ownedCoinIds;

  bool get isLoading => _isLoading;
  Map<CountryNames, int> get coinsByCountry => _coinsByCountry;

  bool isOwned(int coinId) => _ownedCoinIds.contains(coinId);

  List<CoinStats>? get topCountryStats => _topCountryStatsCache;

  List<CoinStats>? get topTypeStats => _topTypeStatsCache;

  int _ownedCoinCount = 0;
  int get ownedCoinCount => _ownedCoinCount;

  // ---------------------------------------------------------------------------
  // Init
  // ---------------------------------------------------------------------------

  Future<void> init() async {
    _isLoading = true;
    notifyListeners();

    await _loadOwnedCoins();
    await _loadCoinCount();
    await _loadCoinsByCountry();
    await _loadTopCountryStats();
    await _loadTopTypeStats();

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

  // ==== GET ALL OWNED COIN COUNT ==== // ✅

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

  Future<bool> toggleCoinOwnership(int coinId) async {
    final result = await _toggleCoinOwnershipUseCase(Params(coinId));

    switch (result) {
      case Success(value: final isNowOwned):
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

  Future<void> refreshStatistics() async {
    await _loadCoinCount();
    await _loadCoinsByCountry();
    _topCountryStatsCache = null;
    _topTypeStatsCache = null;

    // Refresh statistics
    await _loadTopCountryStats();
    await _loadTopTypeStats();

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

  Future<int> getOwnedCoinCountForType(
    CoinType type, {
    String? startDate,
  }) async {
    final result = await _getUserCoinCountByTypeUseCase(
      UserCoinCountParams(type, startDate: startDate),
    );

    switch (result) {
      case Success(value: final count):
        return count;
      case Error(error: final e):
        _log.severe('Failed to get coin count for $type: $e');
        return 0;
    }
  }

  // ---------------------------------------------------------------------------
  // Private
  // ---------------------------------------------------------------------------

  // GET OWNED COIN COUNT BY TYPE --------------------------------------------------------

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

  // FOR STATISTICS ---------------------------------------------------------------------

  Future<void> _loadTopCountryStats() async {
    if (_topCountryStatsCache != null) return;

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

  Future<void> _loadTopTypeStats() async {
    if (_topTypeStatsCache != null) return;

    final result = await _getStatisticsSortedByTypeUseCase(NoParams(null));
    switch (result) {
      case Success(value: final stats):
        _topTypeStatsCache = stats;
      case Error(error: final e):
        _log.severe('Error getting top type stats: $e');
        _topTypeStatsCache = [];
    }
    notifyListeners();
  }
}

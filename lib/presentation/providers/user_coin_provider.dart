// lib/presentation/providers/user_coin_provider.dart
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coin_count.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coins.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coins_count_by_country.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coin_count_by_type.dart';
import 'package:coinllector_app/domain/usecases/user_coin/check_if_user_owns_coin.dart';
import 'package:coinllector_app/domain/usecases/user_coin/toggle_coin_ownership.dart';
import 'package:coinllector_app/domain/usecases/user_coin/update_quality_of_owned_coin.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/shared/enums/coin_quality_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

class UserCoinProvider extends ChangeNotifier {
  final _log = Logger("USER_COIN_PROVIDER");

  // USE CASES --------------------------------------

  final ToggleCoinOwnershipUseCase _toggleCoinOwnershipUseCase;
  final UpdateQualityOfOwnedCoinUseCase _updateQualityOfOwnedCoinUseCase;
  final GetOwnedCoinsUseCase _getOwnedCoinsUseCase;
  final GetOwnedCoinCountUseCase _getOwnedCoinCountUseCase;
  final CheckIfUserOwnsCoinUseCase _userOwnsCoinUseCase;
  final GetOwnedCoinCountForTypeUseCase _getOwnedCoinsByTypeUseCase;
  final GetOwnedCoinsByCountryUseCase _getOwnedCoinsByCountryUseCase;

  Set<int> _ownedCoinsCount = {};

  bool _isLoading = false;

  Map<CountryNames, int> _coinsByCountry = {};

  UserCoinProvider({
    required ToggleCoinOwnershipUseCase toggleCoinOwnershipUseCase,
    required UpdateQualityOfOwnedCoinUseCase updateQualityOfOwnedCoinUseCase,
    required GetOwnedCoinsUseCase getOwnedCoinsUseCase,
    required GetOwnedCoinCountUseCase getOwnedCoinCountUseCase,
    required CheckIfUserOwnsCoinUseCase userOwnsCoinUseCase,
    required GetOwnedCoinCountForTypeUseCase getOwnedCoinsCountByTypeUseCase,
    required GetOwnedCoinsByCountryUseCase getOwnedCoinsByCountryUseCase,
  }) : _toggleCoinOwnershipUseCase = toggleCoinOwnershipUseCase,
       _updateQualityOfOwnedCoinUseCase = updateQualityOfOwnedCoinUseCase,
       _getOwnedCoinsUseCase = getOwnedCoinsUseCase,
       _getOwnedCoinCountUseCase = getOwnedCoinCountUseCase,
       _userOwnsCoinUseCase = userOwnsCoinUseCase,
       _getOwnedCoinsByTypeUseCase = getOwnedCoinsCountByTypeUseCase,
       _getOwnedCoinsByCountryUseCase = getOwnedCoinsByCountryUseCase;

  // Getters ----------------------------------------------------------------------
  Set<int> get ownedCoinsCount => _ownedCoinsCount;

  bool get isLoading => _isLoading;
  Map<CountryNames, int> get coinsByCountry => _coinsByCountry;

  bool isOwned(int coinId) => _ownedCoinsCount.contains(coinId);

  // ====================== PUBLIC METHODS ====================== //

  Future<void> init() async {
    _isLoading = true;
    notifyListeners();

    await _loadOwnedCoins();
    await _loadCoinCount();
    await _loadCoinsByCountry();

    _isLoading = false;
    notifyListeners();
  }

  Future<void> _loadOwnedCoins() async {
    final result = await _getOwnedCoinsUseCase(NoParams(null));

    switch (result) {
      case Success(value: final coins):
        _ownedCoinsCount = coins.toSet();
        _log.info('Loaded ${_ownedCoinsCount.length} owned coins');
      case Error(error: final e):
        _log.severe('Error loading owned coins: $e');
    }
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
          _ownedCoinsCount.add(coinId);
        } else {
          _ownedCoinsCount.remove(coinId);
        }
        await refreshStatistics();
        return true; // Operation succeeded
      case Error(error: final e):
        _log.severe('Error toggling coin ownership: $e');
        return false; // Operation failed
    }
  }

  Future<bool> updateCoinQuality(int coinId, CoinQuality quality) async {
    final updateParams = UpdateCoinQualityParams(coinId, quality);
    final result = await _updateQualityOfOwnedCoinUseCase(Params(updateParams));

    switch (result) {
      case Success():
        _log.info('Updated quality of coin $coinId to ${quality.name}');
        return true;
      case Error(error: final e):
        _log.severe('Error updating coin quality: $e');
        return false;
    }
  }

  // Keep track of the current type being viewed
  CoinType? _currentViewType;

  // Method to set current view type
  void setCurrentViewType(CoinType type) {
    _currentViewType = type;
  }

  Future<void> refreshStatistics() async {
    await _loadCoinCount();
    await _loadCoinsByCountry();

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
}

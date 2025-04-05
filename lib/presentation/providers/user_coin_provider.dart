// lib/presentation/providers/user_coin_provider.dart
import 'package:coinllector_app/domain/usecases/user_coin/add_coin.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coin_count.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coins.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coins_count_by_country.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coins_count_by_type.dart';
import 'package:coinllector_app/domain/usecases/user_coin/remove_coin.dart';
import 'package:coinllector_app/domain/usecases/user_coin/user_owns_coin.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

class UserCoinProvider extends ChangeNotifier {
  final _log = Logger("USER_COIN_PROVIDER");

  // USE CASES --------------------------------------
  final AddCoinUseCase _addCoinUseCase;
  final RemoveCoinUseCase _removeCoinUseCase;
  final GetOwnedCoinsUseCase _getOwnedCoinsUseCase;
  final GetOwnedCoinCountUseCase _getOwnedCoinCountUseCase;
  final UserOwnsCoinUseCase _userOwnsCoinUseCase;
  final GetOwnedCoinsByTypeUseCase _getOwnedCoinsByTypeUseCase;
  final GetOwnedCoinsByCountryUseCase _getOwnedCoinsByCountryUseCase;

  Set<int> _ownedCoins = {};
  int _ownedCoinCount = 0;
  bool _isLoading = false;
  Map<CoinType, int> _coinsByType = {};
  Map<CountryNames, int> _coinsByCountry = {};

  UserCoinProvider({
    required AddCoinUseCase addCoinUseCase,
    required RemoveCoinUseCase removeCoinUseCase,
    required GetOwnedCoinsUseCase getOwnedCoinsUseCase,
    required GetOwnedCoinCountUseCase getOwnedCoinCountUseCase,
    required UserOwnsCoinUseCase userOwnsCoinUseCase,
    required GetOwnedCoinsByTypeUseCase getOwnedCoinsByTypeUseCase,
    required GetOwnedCoinsByCountryUseCase getOwnedCoinsByCountryUseCase,
  }) : _addCoinUseCase = addCoinUseCase,
       _removeCoinUseCase = removeCoinUseCase,
       _getOwnedCoinsUseCase = getOwnedCoinsUseCase,
       _getOwnedCoinCountUseCase = getOwnedCoinCountUseCase,
       _userOwnsCoinUseCase = userOwnsCoinUseCase,
       _getOwnedCoinsByTypeUseCase = getOwnedCoinsByTypeUseCase,
       _getOwnedCoinsByCountryUseCase = getOwnedCoinsByCountryUseCase;

  // Getters ----------------------------------------------------------------------
  Set<int> get ownedCoins => _ownedCoins;
  int get ownedCoinCount => _ownedCoinCount;
  bool get isLoading => _isLoading;
  Map<CoinType, int> get coinsByType => _coinsByType;
  Map<CountryNames, int> get coinsByCountry => _coinsByCountry;

  bool isOwned(int coinId) => _ownedCoins.contains(coinId);

  Future<void> init() async {
    _isLoading = true;
    notifyListeners();

    await _loadOwnedCoins();
    await _loadCoinCount();
    await _loadCoinsByType();
    await _loadCoinsByCountry();

    _isLoading = false;
    notifyListeners();
  }

  Future<void> _loadOwnedCoins() async {
    final result = await _getOwnedCoinsUseCase(NoParams(null));

    switch (result) {
      case Success(value: final coins):
        _ownedCoins = coins.toSet();
        _log.info('Loaded ${_ownedCoins.length} owned coins');
      case Error(error: final e):
        _log.severe('Error loading owned coins: $e');
    }
  }

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

  Future<void> _loadCoinsByType() async {
    final result = await _getOwnedCoinsByTypeUseCase(NoParams(null));

    switch (result) {
      case Success(value: final byType):
        _coinsByType = byType;
        _log.info('Loaded coins by type');
      case Error(error: final e):
        _log.severe('Error loading coins by type: $e');
    }
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
    final ownershipCheck = await _userOwnsCoinUseCase(Params(coinId));
    bool isOwned;

    switch (ownershipCheck) {
      case Success(value: final owned):
        isOwned = owned;
      case Error(error: final e):
        _log.severe('Error checking coin ownership: $e');
        return false;
    }

    Result result;

    if (isOwned) {
      result = await _removeCoinUseCase(Params(coinId));
    } else {
      result = await _addCoinUseCase(Params(coinId));
    }

    switch (result) {
      case Success():
        if (isOwned) {
          _ownedCoins.remove(coinId);
        } else {
          _ownedCoins.add(coinId);
        }
        await refreshStatistics();
        return true;
      case Error(error: final e):
        _log.severe('Error toggling coin ownership: $e');
        return false;
    }
  }

  Future<void> refreshStatistics() async {
    await _loadCoinCount();
    await _loadCoinsByType();
    await _loadCoinsByCountry();
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

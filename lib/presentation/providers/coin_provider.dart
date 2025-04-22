import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/domain/usecases/coin/get_coins_by_country.dart';
import 'package:coinllector_app/domain/usecases/coin/get_coins_by_type.dart';
import 'package:coinllector_app/domain/usecases/coin/get_total_coin_count.dart';

import 'package:coinllector_app/presentation/model/coin_display.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';

import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';
import 'package:coinllector_app/data/datasources/local/data/value_coins_data.dart';

/// Manages coin data and provides it to the Presentation Layer
class CoinProvider extends ChangeNotifier {
  final _log = Logger('COIN_PROVIDER');

  // Private Use Cases --------------------------------------------------------

  final GetCoinsByTypeUseCase _getCoinsByTypeUseCase;
  final GetTotalCoinCountUseCase _getTotalCoinCountUseCase;
  final GetCoinsByCountryUseCase _getCoinsByCountryUseCase;

  CoinProvider({
    required GetCoinsByTypeUseCase getCoinsByTypeUseCase,
    required GetTotalCoinCountUseCase getTotalCoinCountUseCase,
    required GetCoinsByCountryUseCase getCoinsByCountryUseCase,
  }) : _getCoinsByTypeUseCase = getCoinsByTypeUseCase,
       _getTotalCoinCountUseCase = getTotalCoinCountUseCase,
       _getCoinsByCountryUseCase = getCoinsByCountryUseCase;

  // State --------------------------------------------------------------------

  bool _isLoading = false;
  String? _error;

  final Map<CoinType, List<Coin>> _coinsByType = {};
  final Map<CountryNames, List<Coin>> _coinsByCountry = {};
  final Map<CountryNames, int> _countryTotalCoinsCount = {};
  int _totalCoinCount = 0;

  // Getters ------------------------------------------------------------------

  bool get isLoading => _isLoading;
  String? get error => _error;

  int get totalCoinCount => _totalCoinCount;

  Map<CoinType, List<Coin>> get allCoinsByType =>
      Map.unmodifiable(_coinsByType);

  Map<CountryNames, List<Coin>> get allCoinsByCountry =>
      Map.unmodifiable(_coinsByCountry);

  // For static display
  UnmodifiableListView<CoinDisplay> get coinsByValue =>
      UnmodifiableListView(CoinDisplayData.coinTypes);

  // ============================ PUBLIC METHODS ============================ //

  // Init ---------------------------------------------------------------------

  Future<void> init() async {
    if (_isLoading) return;

    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      await _loadTotalCoinCount();
    } catch (e) {
      _error = e.toString();
      _log.severe('Error initializing coin provider: $_error');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Gets coins for a given [CoinType], caches and notifies
  Future<List<Coin>> getCoinsByType(CoinType type) async {
    if (_coinsByType.containsKey(type)) {
      return _coinsByType[type]!;
    }

    _coinsByType[type] = [];
    notifyListeners();

    try {
      final result = await _getCoinsByTypeUseCase(Params(type));
      switch (result) {
        case Success(value: final coins):
          _coinsByType[type] = coins;
          _log.info('Loaded ${coins.length} coins for type: ${type.name}');
          notifyListeners();
          return coins;
        case Error(error: final e):
          _log.severe('Failed to load coins for type ${type.name}', e);
          throw e;
      }
    } catch (e) {
      _log.severe('Unexpected error loading coins for type: ${type.name}', e);
      rethrow;
    }
  }

  /// Gets coins for a given [CountryNames], caches and notifies
  Future<List<Coin>> getCoinsByCountry(CountryNames countryName) async {
    if (_coinsByCountry.containsKey(countryName)) {
      return _coinsByCountry[countryName]!;
    }

    _coinsByCountry[countryName] = [];
    notifyListeners();

    try {
      final result = await _getCoinsByCountryUseCase(Params(countryName));
      switch (result) {
        case Success(value: final coins):
          _coinsByCountry[countryName] = coins;
          _log.info(
            'Loaded ${coins.length} coins for country: ${countryName.name}',
          );
          notifyListeners();
          return coins;
        case Error(error: final e):
          _log.severe(
            'Failed to load coins for country ${countryName.name}',
            e,
          );
          throw e;
      }
    } catch (e) {
      _log.severe(
        'Unexpected error loading coins for country: ${countryName.name}',
        e,
      );
      rethrow;
    }
  }

  /// Returns the total number of coins for a specific country
  int getCountryTotalCoinCount(CountryNames countryName) {
    // Use cache if available
    if (_countryTotalCoinsCount.containsKey(countryName)) {
      return _countryTotalCoinsCount[countryName]!;
    }

    // If loaded coins for this country, count them
    if (_coinsByCountry.containsKey(countryName)) {
      final count = _coinsByCountry[countryName]!.length;
      _countryTotalCoinsCount[countryName] = count;
      return count;
    }

    // If we haven't loaded the coins yet, trigger loading and return a default
    // This will be updated when getCoinsByCountry completes
    getCoinsByCountry(countryName);
    return 0; // Default value until data is loaded
  }

  //
  //
  //
  //
  /// Refreshes coins by type - used when User Preference is changed
  void refreshCoinsByType(CoinType type) {
    _log.info('Refreshing coins for type: ${type.name}');
    _coinsByType.remove(type);
    notifyListeners();
    getCoinsByType(type);
  }

  /// Refreshes entire coin count and type caches
  void refreshAll() {
    _log.info('Refreshing all coin data');
    _coinsByType.clear();
    _coinsByCountry.clear();
    _totalCoinCount = 0;
    notifyListeners();
    init(); // Re-fetch total count
  }

  // COIN COUNTS -------------------------------------------------------------------

  // ADD HERE THE COUNT FOR EACH COUNTRY.
  // i think it is basically a getCoinsByType but .length isnt it?

  // ============================ PRIVATE METHODS ============================ //

  /// Internal loader for total coin count
  Future<void> _loadTotalCoinCount() async {
    final result = await _getTotalCoinCountUseCase(NoParams(null));
    switch (result) {
      case Success(value: final count):
        _totalCoinCount = count;
        _log.info('Total coin count loaded: $count');
      case Error(error: final e):
        _log.severe('Failed to load total coin count', e);
        throw e;
    }
  }
}

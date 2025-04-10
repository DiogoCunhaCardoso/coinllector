import 'dart:async';
import 'dart:collection';

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
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

/// Manages coin data and provides it to the Presentation Layer
class CoinProvider extends ChangeNotifier {
  final Logger _log = Logger('CoinProvider');

  // Dependencies (use cases)
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

  // ====================== STATE ====================== //

  bool _isLoading = false;
  Exception? _loadError;

  bool get isLoading => _isLoading;
  Exception? get error => _loadError;

  // ====================== PUBLIC METHODS ====================== //

  Future<void> init() async {
    if (_isLoading) return;
    _startLoading();
    try {
      await _loadTotalCoinCount();
    } catch (e) {
      _handleLoadError(e);
    } finally {
      _stopLoading();
    }
  }

  // ==== FOR VALUE TAB ==== // ✅

  final List<CoinDisplay> _valueCoins = CoinDisplayData.coinTypes;

  UnmodifiableListView<CoinDisplay> get coinsByValue =>
      UnmodifiableListView(_valueCoins);

  // ==== FOR TOTAL COIN COUNT ==== // ✅

  int _totalCoinCount = 0;

  int get totalCoinCount => _totalCoinCount;

  Future<void> _loadTotalCoinCount() async {
    final result = await _getTotalCoinCountUseCase(NoParams(null));

    switch (result) {
      case Success(value: final count):
        _totalCoinCount = count;
        _log.info('Total coin count loaded: $count');
      case Error(error: final exception):
        _log.severe('Failed to load total coin count', exception);
        throw exception;
    }
  }

  // ==== ARRAY OF COINS BY TYPE ==== //

  final Map<CoinType, List<Coin>> _coinsByType = {};

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
        case Error(error: final exception):
          _log.severe('Failed to load coins for type ${type.name}', exception);
          notifyListeners();
          throw exception;
      }
    } catch (e) {
      _log.severe('Unexpected error loading coins', e);
      notifyListeners();
      rethrow;
    }
  }

  Future<void> refreshCoinsByType(CoinType type) async {
    _coinsByType.remove(type);
    notifyListeners();
  }
  // COINS BY COUNTRY (LAZY LOADING) ------------------------------------------

  final Map<CountryNames, List<Coin>> _coinsByCountry = {};

  Map<CoinType, List<Coin>> get allCoinsByType {
    return Map.unmodifiable(_coinsByType);
  }

  Map<CountryNames, List<Coin>> get allCoinsByCountry {
    return Map.unmodifiable(_coinsByCountry);
  }

  // Method to get coins by country
  Future<List<Coin>> getCoinsByCountry(CountryNames countryName) async {
    // Return from cache if available
    if (_coinsByCountry.containsKey(countryName)) {
      return _coinsByCountry[countryName]!;
    }

    // Initialize with empty list
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
        case Error(error: final exception):
          _log.severe(
            'Failed to load coins for country ${countryName.name}',
            exception,
          );
          notifyListeners();
          throw exception;
      }
    } catch (e) {
      _log.severe('Unexpected error loading coins for country', e);
      notifyListeners();
      rethrow;
    }
  }

  //
  //
  //

  // Method to preload all coins by type
  Future<Map<CoinType, List<Coin>>> loadAllCoinsByType() async {
    for (final type in CoinType.values) {
      if (!_coinsByType.containsKey(type)) {
        try {
          await getCoinsByType(type);
        } catch (e) {
          _log.severe('Failed to load coins for type ${type.name}', e);
        }
      }
    }
    return allCoinsByType;
  }

  // Method to preload all coins by country
  Future<Map<CountryNames, List<Coin>>> loadAllCoinsByCountry() async {
    for (final country in CountryNames.values) {
      if (!_coinsByCountry.containsKey(country)) {
        try {
          await getCoinsByCountry(country);
        } catch (e) {
          _log.severe('Failed to load coins for country ${country.name}', e);
        }
      }
    }
    return allCoinsByCountry;
  }

  //
  //
  //
  //
  // UTILS

  void _startLoading() {
    _isLoading = true;
    _loadError = null;
    notifyListeners();
  }

  void _stopLoading() {
    _isLoading = false;
    notifyListeners();
  }

  void _handleLoadError(dynamic error) {
    _loadError = error is Exception ? error : Exception('Coin load failed');
    _log.severe('Coin data initialization error', error);
  }
}

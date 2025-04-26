import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/domain/usecases/coin/get_coin_count_by_country.dart';
import 'package:coinllector_app/domain/usecases/coin/get_coin_count_by_type.dart';
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

  // ---------------------------------------------------------------------------
  // Private Use Cases
  // ---------------------------------------------------------------------------

  final GetCoinsByTypeUseCase _getCoinsByTypeUseCase;
  final GetCoinsByCountryUseCase _getCoinsByCountryUseCase;
  final GetTotalCoinCountUseCase _getTotalCoinCountUseCase;
  final GetTypeCoinCountUseCase _getTypeTotalCoinCount;
  final GetCountryCoinCountUseCase _getCountryTotalCoinCount;

  CoinProvider({
    required GetCoinsByTypeUseCase getCoinsByTypeUseCase,
    required GetCoinsByCountryUseCase getCoinsByCountryUseCase,
    required GetTotalCoinCountUseCase getTotalCoinCountUseCase,
    required GetTypeCoinCountUseCase getTypeTotalCoinCount,
    required GetCountryCoinCountUseCase getCountryTotalCoinCount,
  }) : _getCoinsByTypeUseCase = getCoinsByTypeUseCase,
       _getCoinsByCountryUseCase = getCoinsByCountryUseCase,
       _getTotalCoinCountUseCase = getTotalCoinCountUseCase,
       _getTypeTotalCoinCount = getTypeTotalCoinCount,
       _getCountryTotalCoinCount = getCountryTotalCoinCount;

  // ---------------------------------------------------------------------------
  // State
  // ---------------------------------------------------------------------------

  bool _isLoading = false;
  String? _error;

  final Map<CoinType, List<Coin>> _coinsByType = {};
  final Map<CountryNames, List<Coin>> _coinsByCountry = {};
  int _totalCoinCount = 0;

  // ---------------------------------------------------------------------------
  // Getters
  // ---------------------------------------------------------------------------

  bool get isLoading => _isLoading;
  String? get error => _error;

  int get totalCoinCount => _totalCoinCount;

  Map<CoinType, List<Coin>> get allCoinsByType =>
      Map.unmodifiable(_coinsByType);

  Map<CountryNames, List<Coin>> get allCoinsByCountry =>
      Map.unmodifiable(_coinsByCountry);

  UnmodifiableListView<CoinDisplay> get coinsByValue =>
      UnmodifiableListView(CoinDisplayData.coinTypes);

  // ---------------------------------------------------------------------------
  // Init
  // ---------------------------------------------------------------------------

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

  // ---------------------------------------------------------------------------
  // Coin Fetching
  // ---------------------------------------------------------------------------

  Future<List<Coin>> getCoinsByType(CoinType type) async {
    if (_coinsByType.containsKey(type)) {
      return _coinsByType[type]!;
    }

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

  Future<List<Coin>> getCoinsByCountry(CountryNames countryName) async {
    if (_coinsByCountry.containsKey(countryName)) {
      return _coinsByCountry[countryName]!;
    }

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

  // ---------------------------------------------------------------------------
  // Count Fetching
  // ---------------------------------------------------------------------------

  Future<int> getCountryCoinCount(CountryNames countryName) async {
    final result = await _getCountryTotalCoinCount(Params(countryName));
    return switch (result) {
      Success(value: final count) => count,
      Error(error: final e) => _logAndReturnZero(
        'country',
        countryName.name,
        e,
      ),
    };
  }

  Future<int> getTypeCoinCount(CoinType type) async {
    final result = await _getTypeTotalCoinCount(Params(type));
    return switch (result) {
      Success(value: final count) => count,
      Error(error: final e) => _logAndReturnZero('type', type.name, e),
    };
  }

  int _logAndReturnZero(String label, String value, Object e) {
    _log.warning('Failed to get coin count for $label $value', e);
    return 0;
  }

  // ---------------------------------------------------------------------------
  // Refreshers
  // ---------------------------------------------------------------------------

  void refreshCoinsByType(CoinType type) {
    _log.info('Refreshing coins for type: ${type.name}');
    _coinsByType.remove(type);
    notifyListeners();
    getCoinsByType(type);
  }

  void refreshAll() {
    _log.info('Refreshing all coin data');
    _coinsByType.clear();
    _coinsByCountry.clear();
    _totalCoinCount = 0;
    notifyListeners();
    init();
  }

  // ---------------------------------------------------------------------------
  // Private
  // ---------------------------------------------------------------------------

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

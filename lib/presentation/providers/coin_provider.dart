import 'dart:collection';

import 'package:coinllector_app/domain/usecases/coin/get_coin_by_id.dart';
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
  final GetCoinByIdUseCase _getCoinByIdUseCase;

  CoinProvider({
    required GetCoinsByTypeUseCase getCoinsByTypeUseCase,
    required GetCoinsByCountryUseCase getCoinsByCountryUseCase,
    required GetTotalCoinCountUseCase getTotalCoinCountUseCase,
    required GetTypeCoinCountUseCase getTypeTotalCoinCount,
    required GetCountryCoinCountUseCase getCountryTotalCoinCount,
    required GetCoinByIdUseCase getCoinByIdUseCase,
  }) : _getCoinsByTypeUseCase = getCoinsByTypeUseCase,
       _getCoinsByCountryUseCase = getCoinsByCountryUseCase,
       _getTotalCoinCountUseCase = getTotalCoinCountUseCase,
       _getTypeTotalCoinCount = getTypeTotalCoinCount,
       _getCountryTotalCoinCount = getCountryTotalCoinCount,
       _getCoinByIdUseCase = getCoinByIdUseCase;

  // ---------------------------------------------------------------------------
  // State
  // ---------------------------------------------------------------------------

  bool _isLoading = false;
  String? _error;

  final Map<CountryNames, List<Coin>> _coinsByCountry = {};
  int _totalCoinCount = 0;

  // ---------------------------------------------------------------------------
  // Getters
  // ---------------------------------------------------------------------------

  bool get isLoading => _isLoading;
  String? get error => _error;

  int get totalCoinCount => _totalCoinCount;

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

  Future<Coin> getCoinById(int id) async {
    try {
      final result = await _getCoinByIdUseCase(Params(id));

      switch (result) {
        case Success(value: final coin):
          if (coin == null) {
            throw Exception('Coin with id $id not found');
          }
          _log.info('Loaded coin with id: $id');
          return coin;

        case Error(error: final e):
          _log.severe('Failed to load coin with id $id', e);
          throw e;
      }
    } catch (e) {
      _log.severe('Unexpected error loading coin with id: $id', e);
      rethrow;
    }
  }

  Future<List<Coin>> getCoinsByType(CoinType type, {String? year}) async {
    try {
      final result = await _getCoinsByTypeUseCase(
        CoinsByTypeParams(type, year: year),
      );

      switch (result) {
        case Success(value: final coins):
          _log.info(
            'Loaded ${coins.length} coins for type: ${type.name}'
            '${year != null ? ' from year $year' : ''}',
          );
          notifyListeners();
          return coins;

        case Error(error: final e):
          _log.severe(
            'Failed to load coins for type ${type.name}'
            '${year != null ? ' year $year' : ''}',
            e,
          );
          throw e;
      }
    } catch (e) {
      _log.severe(
        'Unexpected error loading coins for type: ${type.name}'
        '${year != null ? ' year $year' : ''}',
        e,
      );
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

  Future<int> getTypeCoinCount(CoinType type, {String? startDate}) async {
    final result = await _getTypeTotalCoinCount(
      TypeCoinCountParams(type, startDate: startDate),
    );
    return switch (result) {
      Success(value: final count) => count,
      Error(error: final e) => _logAndReturnZero(
        'type',
        '${type.name}${startDate != null ? ' from $startDate' : ''}',
        e,
      ),
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

    notifyListeners();
    getCoinsByType(type);
  }

  void refreshAll() {
    _log.info('Refreshing all coin data');

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

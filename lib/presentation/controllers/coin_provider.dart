import 'dart:async';
import 'dart:collection';

import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/domain/interfaces/coin_interface.dart';
import 'package:coinllector_app/presentation/model/coin_display.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/data/datasources/local/data/value_coins_data.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

class CoinProvider extends ChangeNotifier {
  final Logger _log = Logger('CoinProvider');
  final ICoinRepository _coinRepository;

  // INITIALIZATION ----------------------------------------------------------
  bool _isInitializing = false;
  Exception? _initializationError;

  bool get isLoading => _isInitializing;
  Exception? get error => _initializationError;

  CoinProvider({required ICoinRepository coinRepository})
    : _coinRepository = coinRepository;

  Future<void> init() async {
    if (_isInitializing) return;

    _isInitializing = true;
    _initializationError = null;
    notifyListeners();

    try {
      await _loadTotalCoinCount();
    } catch (e) {
      _initializationError =
          e is Exception ? e : Exception('Initialization failed');
      _log.severe('Error initializing coin data', e);
    } finally {
      _isInitializing = false;
      notifyListeners();
    }
  }

  // VALUE TAB DATA ----------------------------------------------------------
  final List<CoinDisplay> _valueCoins = CoinDisplayData.coinTypes;

  UnmodifiableListView<CoinDisplay> get items =>
      UnmodifiableListView(_valueCoins);

  // TOTAL COIN COUNT --------------------------------------------------------
  int _totalCoinCount = 0;

  int get totalCoinCount => _totalCoinCount;

  Future<void> _loadTotalCoinCount() async {
    final result = await _coinRepository.getCoinCount();

    switch (result) {
      case Success(value: final count):
        _totalCoinCount = count;
        _log.info('Total coin count loaded: $count');
      case Error(error: final exception):
        _log.severe('Failed to load total coin count', exception);
        throw exception;
    }
  }

  // COINS BY TYPE (LAZY LOADING) --------------------------------------------
  final Map<CoinType, List<Coin>> _coinsByType = {};

  Map<CoinType, List<Coin>> get coinsByType => _coinsByType;

  Future<List<Coin>> getCoinsByType(CoinType type) async {
    if (_coinsByType.containsKey(type)) {
      return _coinsByType[type]!;
    }

    _coinsByType[type] = [];
    notifyListeners();

    try {
      final result = await _coinRepository.getCoinsByType(type);

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

  // CACHE MANAGEMENT -------------------------------------------------------

  void invalidateCache(CoinType type) {
    _coinsByType.remove(type);
    notifyListeners();
  }

  void invalidateAllCache() {
    _coinsByType.clear();
    notifyListeners();
  }
}

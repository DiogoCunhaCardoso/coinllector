import 'package:coinllector_app/data/datasources/local/database/database_service.dart';
import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/presentation/views/coins_filter_country/widgets/body/coins_filter_country_grid.dart';
import 'package:coinllector_app/presentation/views/coins_filter_country/widgets/header/header.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';

class CountriesFilterView extends StatefulWidget {
  const CountriesFilterView({super.key, required this.name});

  final CountryNames name;

  @override
  State<CountriesFilterView> createState() => _CountriesFilterViewState();
}

class _CountriesFilterViewState extends State<CountriesFilterView> {
  final DatabaseService _databaseService = DatabaseService.instance;
  final _log = Logger('COUNTRIES_BY_TYPE_VIEW');
  List<Coin>? _coins;
  Set<int> _ownedCoins = {}; // Track owned coins

  @override
  void initState() {
    super.initState();
    _loadCoins();
  }

  Future<void> _loadCoins() async {
    _log.info('Loading coins for country: ${widget.name}');

    await _databaseService.database;

    final coinsResult = await _databaseService.coinRepository.getCoinsByCountry(
      widget.name,
    );

    final ownedCoinsResult =
        await _databaseService.userCoinRepository.getOwnedCoins();

    switch (coinsResult) {
      case Success<List<Coin>>():
        switch (ownedCoinsResult) {
          case Success<List<int>>():
            setState(() {
              _coins = coinsResult.value;
              _ownedCoins = ownedCoinsResult.value.toSet();
            });
          case Error<List<int>>():
            _log.info('Error fetching owned coins: ${ownedCoinsResult.error}');
        }
      case Error<List<Coin>>():
        _log.info('Error loading coins: ${coinsResult.error}');
    }
  }

  Future<void> _toggleCoinOwnership(int coinId) async {
    final isOwned = _ownedCoins.contains(coinId);
    Result<void> result;

    if (isOwned) {
      result = await _databaseService.userCoinRepository.removeCoin(coinId);
    } else {
      result = await _databaseService.userCoinRepository.addCoin(coinId);
    }

    switch (result) {
      case Success<void>():
        setState(() {
          if (isOwned) {
            _ownedCoins.remove(coinId);
          } else {
            _ownedCoins.add(coinId);
          }
        });
      case Error<void>():
        _log.info('Error toggling coin ownership: ${result.error}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              // BANNER
              CoinBanner(name: widget.name, owned: 0, total: 12),
              // CONTENT
              Expanded(
                child: CoinsFilterCountryGrid(
                  coins: _coins,
                  ownedCoins: _ownedCoins,
                  onToggleCoin: _toggleCoinOwnership,
                ),
              ),
            ],
          ),

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => context.pop(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:coinllector_app/models/country.dart';
import 'package:coinllector_app/services/database/database_service.dart';
import 'package:coinllector_app/ui/coins_filter_country/widgets/body/coins_filter_country_grid.dart';
import 'package:coinllector_app/ui/coins_filter_country/widgets/header/header.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:coinllector_app/models/coin.dart';
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

  @override
  void initState() {
    super.initState();
    _loadCoins();
  }

  Future<void> _loadCoins() async {
    _log.info('Loading coins for type: ${widget.name}');
    await _databaseService.database;
    final coins = await _databaseService.coinRepository.getCoinsByCountry(
      widget.name,
    );
    setState(() => _coins = coins);
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
              Expanded(child: CoinsFilterCountryGrid(coins: _coins)),
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

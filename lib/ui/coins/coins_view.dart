import 'package:coinllector_app/models/coin.dart';
import 'package:coinllector_app/routing/routes.dart';
import 'package:coinllector_app/services/database/database_service.dart';
import 'package:coinllector_app/ui/coins/widgets/content_grid.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:coinllector_app/models/country.dart';
import 'package:coinllector_app/ui/coins/widgets/header.dart';

class CoinsView extends StatefulWidget {
  const CoinsView({super.key});

  @override
  State<CoinsView> createState() => _CoinsViewState();
}

class _CoinsViewState extends State<CoinsView> {
  final DatabaseService _databaseService = DatabaseService.instance;
  int _selectedIndex = 0;
  List<Country>? _countries;

  List<Map<String, dynamic>> coinsData = [
    {
      "image": "assets/value/value-commemorative.png",
      "type": CoinType.COMMEMORATIVE.name,
    },
    {
      "image": "assets/value/value-two_euro.png",
      "type": CoinType.TWO_EURO.name,
    },
    {
      "image": "assets/value/value-one_euro.png",
      "type": CoinType.ONE_EURO.name,
    },
    {
      "image": "assets/value/value-fifty_cent.png",
      "type": CoinType.FIFTY_CENT.name,
    },
    {
      "image": "assets/value/value-twenty_cent.png",
      "type": CoinType.TWENTY_CENT.name,
    },
    {
      "image": "assets/value/value-ten_cent.png",
      "type": CoinType.TEN_CENT.name,
    },
    {
      "image": "assets/value/value-five_cent.png",
      "type": CoinType.FIVE_CENT.name,
    },
    {
      "image": "assets/value/value-two_cent.png",
      "type": CoinType.TWO_CENT.name,
    },
    {
      "image": "assets/value/value-one_cent.png",
      "type": CoinType.ONE_CENT.name,
    },
  ];

  @override
  void initState() {
    super.initState();
    _loadCountries();
  }

  Future<void> _loadCountries() async {
    await _databaseService.database;
    final countries = await _databaseService.countryRepository.getCountries();
    setState(() => _countries = countries);
  }

  Widget _countriesList() {
    if (_countries == null) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_countries!.isEmpty) {
      return const Center(child: Text('No countries available'));
    }

    return ContentGrid(
      coins:
          _countries!
              .map(
                (country) => {
                  "image": country.flagImage,
                  "type": CoinType.COMMEMORATIVE.name,
                },
              )
              .toList(),
      onCoinTap: (type) => context.go(AppRoutes.coinsWithType(type)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Header(
                selectedIndex: _selectedIndex,
                onTabChanged: (index) => setState(() => _selectedIndex = index),
              ),

              // Tab Content
              Expanded(
                child: IndexedStack(
                  index: _selectedIndex,
                  children: [
                    ContentGrid(
                      coins: coinsData,
                      onCoinTap:
                          (type) => context.go(AppRoutes.coinsWithType(type)),
                    ),
                    _countriesList(),
                  ],
                ),
              ),
            ],
          ),

          // AppBar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

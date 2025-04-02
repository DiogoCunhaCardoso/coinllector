import 'package:coinllector_app/data/local/database/database_service.dart';
import 'package:coinllector_app/domain/entities/country.dart';
import 'package:coinllector_app/presentation/model/coin_display.dart';
import 'package:coinllector_app/presentation/views/coins/widgets/coins_view_grid.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:flutter/material.dart';
import 'package:coinllector_app/data/models/country_model.dart';
import 'package:coinllector_app/presentation/views/coins/widgets/coins_header.dart';

class CoinsView extends StatefulWidget {
  const CoinsView({super.key});

  @override
  State<CoinsView> createState() => _CoinsViewState();
}

class _CoinsViewState extends State<CoinsView> {
  final DatabaseService _databaseService = DatabaseService.instance;
  int _selectedIndex = 0;
  List<Country>? _countries;

  bool _isLoading = true;
  int _ownedCoinCount = 0;
  int _totalCoinCount = 0;

  final List<CoinDisplay> coinsData = [
    CoinDisplay(
      image: "assets/value/value-commemorative.png",
      type: CoinType.COMMEMORATIVE,
    ),
    CoinDisplay(
      image: "assets/value/value-two_euro.png",
      type: CoinType.TWO_EURO,
    ),
    CoinDisplay(
      image: "assets/value/value-one_euro.png",
      type: CoinType.ONE_EURO,
    ),
    CoinDisplay(
      image: "assets/value/value-fifty_cent.png",
      type: CoinType.FIFTY_CENT,
    ),
    CoinDisplay(
      image: "assets/value/value-twenty_cent.png",
      type: CoinType.TWENTY_CENT,
    ),
    CoinDisplay(
      image: "assets/value/value-ten_cent.png",
      type: CoinType.TEN_CENT,
    ),
    CoinDisplay(
      image: "assets/value/value-five_cent.png",
      type: CoinType.FIVE_CENT,
    ),
    CoinDisplay(
      image: "assets/value/value-two_cent.png",
      type: CoinType.TWO_CENT,
    ),
    CoinDisplay(
      image: "assets/value/value-one_cent.png",
      type: CoinType.ONE_CENT,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _initializeData();
  }

  Future<void> _initializeData() async {
    try {
      await _databaseService.database;
      await Future.wait([_loadCountries(), _getAllCoinsCount()]);
    } catch (e) {
      debugPrint('Error initializing data: $e');
    } finally {
      setState(() => _isLoading = false);
    }
  }

  Future<void> _loadCountries() async {
    final countries = await _databaseService.countryRepository.getCountries();
    setState(() => _countries = countries);
  }

  Future<void> _getAllCoinsCount() async {
    final ownedCoinCount =
        await _databaseService.userCoinRepository.getOwnedCoinCount();
    final allCoinCount = await _databaseService.coinRepository.getCoinCount();

    debugPrint(
      'Counts - Owned: $ownedCoinCount, Total: $allCoinCount',
    ); // Add debug

    setState(() {
      _ownedCoinCount = ownedCoinCount;
      _totalCoinCount = allCoinCount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              CoinsHeader(
                coinsOwned:
                    _isLoading ? 0 : _ownedCoinCount, // NOT CURRENTLY WORKING
                totalCoins: _isLoading ? 0 : _totalCoinCount,
                selectedIndex: _selectedIndex,
                onTabChanged: (index) => setState(() => _selectedIndex = index),
              ),
              // Tab Content
              Expanded(
                child: IndexedStack(
                  index: _selectedIndex,
                  children: [
                    CoinsViewGrid(items: coinsData),
                    CoinsViewGrid(items: _countries ?? []),
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

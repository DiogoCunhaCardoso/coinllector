import 'package:coinllector_app/presentation/providers/coin_provider.dart';
import 'package:coinllector_app/presentation/providers/country_provider.dart';
import 'package:coinllector_app/presentation/providers/user_coin_provider.dart';
import 'package:coinllector_app/presentation/views/coins/widgets/coins_header.dart';
import 'package:coinllector_app/presentation/views/coins/widgets/coins_view_grid.dart';
import 'package:coinllector_app/data/datasources/local/data/value_coins_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CoinsView extends StatelessWidget {
  const CoinsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const _CoinsViewContent();
  }
}

class _CoinsViewContent extends StatefulWidget {
  const _CoinsViewContent();

  @override
  State<_CoinsViewContent> createState() => _CoinsViewContentState();
}

class _CoinsViewContentState extends State<_CoinsViewContent> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final coinProvider = context.watch<CoinProvider>();
    final userCoinProvider = context.watch<UserCoinProvider>();
    final countryProvider = context.watch<CountryProvider>();

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              CoinsHeader(
                coinsOwned: userCoinProvider.ownedCoinCount,
                totalCoins: coinProvider.totalCoinCount,
                selectedIndex: _selectedIndex,
                onTabChanged: (index) => setState(() => _selectedIndex = index),
              ),
              Expanded(
                child:
                    coinProvider.isLoading
                        ? const Center(child: CircularProgressIndicator())
                        : IndexedStack(
                          index: _selectedIndex,
                          children: [
                            CoinsViewGrid(items: CoinDisplayData.coinTypes),
                            CoinsViewGrid(items: countryProvider.countries),
                          ],
                        ),
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
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

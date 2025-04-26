import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/presentation/providers/coin_provider.dart';
import 'package:coinllector_app/presentation/providers/country_provider.dart';
import 'package:coinllector_app/presentation/providers/user_coin_provider.dart';
import 'package:coinllector_app/presentation/views/coins/widgets/coins_header.dart';
import 'package:coinllector_app/presentation/views/coins/widgets/coins_view_grid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CoinsView extends StatefulWidget {
  const CoinsView({super.key});

  @override
  State<CoinsView> createState() => _CoinsViewState();
}

class _CoinsViewState extends State<CoinsView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // PROVIDERS -----------------------------------------------------------------------

    final coinProvider = Provider.of<CoinProvider>(context);
    final userCoinProvider = Provider.of<UserCoinProvider>(context);
    final countryProvider = Provider.of<CountryProvider>(context);

    // TAB CONTENT ---------------------------------------------------------------------

    final values = coinProvider.coinsByValue;
    final countries = countryProvider.countries;

    // UI ------------------------------------------------------------------------------

    if (countryProvider.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    //TODO create a global UI component for this
    if (countryProvider.error != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 48, color: Colors.red),
            const SizedBox(height: AppSizes.p16),
            Text('Failed to load countries: ${countryProvider.error}'),
            const SizedBox(height: AppSizes.p16),
            ElevatedButton(
              onPressed: () => countryProvider.init(),
              child: const Text('Retry'),
            ),
          ],
        ),
      );
    }

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
                child: IndexedStack(
                  index: _selectedIndex,
                  children: [
                    CoinsViewGrid(coins: values), // Coin values
                    CoinsViewGrid(
                      coins: countries,
                      isCountry: true,
                    ), // Countries
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

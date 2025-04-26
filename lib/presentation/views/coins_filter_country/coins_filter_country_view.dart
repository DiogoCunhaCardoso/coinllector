import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/presentation/providers/coin_provider.dart';
import 'package:coinllector_app/presentation/providers/user_coin_provider.dart';
import 'package:coinllector_app/presentation/providers/user_prefs_provider.dart';
import 'package:coinllector_app/presentation/views/coins_filter_country/widgets/body/coins_filter_country_grid.dart';
import 'package:coinllector_app/presentation/views/coins_filter_country/widgets/header/header.dart';
import 'package:coinllector_app/shared/components/confirmation_dialog.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

class CountriesFilterView extends StatefulWidget {
  const CountriesFilterView({super.key, required this.name});

  final CountryNames name;

  @override
  State<CountriesFilterView> createState() => _CountriesFilterViewState();
}

class _CountriesFilterViewState extends State<CountriesFilterView> {
  final _log = Logger('COUNTRIES_BY_TYPE_VIEW');

  late Future<({List<Coin> coinsFiltered, int coinCount})> _futureData;

  @override
  void initState() {
    super.initState();
    _futureData = _loadCoinsAndOwnedCount();
  }

  Future<({List<Coin> coinsFiltered, int coinCount})>
  _loadCoinsAndOwnedCount() async {
    final coinProvider = Provider.of<CoinProvider>(context, listen: false);
    final userCoinProvider = Provider.of<UserCoinProvider>(
      context,
      listen: false,
    );

    try {
      _log.info('Loading coins and owned count for country: ${widget.name}');
      final coins = await coinProvider.getCoinsByCountry(widget.name);
      final owned = await userCoinProvider.getOwnedCoinCountForCountry(
        widget.name,
      );
      return (coinsFiltered: coins, coinCount: owned);
    } catch (e) {
      _log.severe('Error loading coins or owned count', e);
      rethrow;
    }
  }

  Future<void> _handleToggleOwnership(int coinId) async {
    final userCoinProvider = Provider.of<UserCoinProvider>(
      context,
      listen: false,
    );
    final userPrefsProvider = Provider.of<UserPreferencesProvider>(
      context,
      listen: false,
    );

    final isOwned = await userCoinProvider.checkIfUserOwnsCoin(coinId);

    if (isOwned && userPrefsProvider.removalConfirmation) {
      if (!mounted) return;

      final confirmed = await ConfirmationDialog.show(context: context);
      if (!confirmed) return;
    }

    await userCoinProvider.toggleCoinOwnership(coinId);
  }

  @override
  Widget build(BuildContext context) {
    final userCoinProvider = context.watch<UserCoinProvider>();

    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder<({List<Coin> coinsFiltered, int coinCount})>(
            future: _futureData,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }

              if (snapshot.hasError) {
                _log.severe(
                  'Error loading coins and owned count',
                  snapshot.error,
                );

                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.error_outline,
                        size: 48,
                        color: Colors.red,
                      ),
                      const SizedBox(height: 16),
                      Text('Failed to load data: ${snapshot.error}'),
                    ],
                  ),
                );
              }

              final data = snapshot.data!;
              final coins = data.coinsFiltered;
              final ownedCoins = data.coinCount;

              return Column(
                children: [
                  CoinCountryBanner(
                    name: widget.name,
                    owned: ownedCoins,
                    total: coins.length,
                  ),
                  Expanded(
                    child: CoinsFilterCountryGrid(
                      coins: coins,
                      ownedCoins: userCoinProvider.ownedCoinIds,
                      onToggleCoin: (coinId) => _handleToggleOwnership(coinId),
                    ),
                  ),
                ],
              );
            },
          ),

          // App bar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: Icon(Icons.adaptive.arrow_back),
                onPressed: () => context.pop(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

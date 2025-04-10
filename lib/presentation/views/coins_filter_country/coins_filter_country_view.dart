import 'package:coinllector_app/data/datasources/local/preferences/user_preferences.dart';
import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/presentation/providers/coin_provider.dart';
import 'package:coinllector_app/presentation/providers/user_coin_provider.dart';
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
  late Future<List<Coin>> _coinsFuture;

  @override
  void initState() {
    super.initState();
    _coinsFuture = _loadCoinsForCountry();
  }

  Future<List<Coin>> _loadCoinsForCountry() async {
    final coinProvider = Provider.of<CoinProvider>(context, listen: false);

    try {
      _log.info('Loading coins for country: ${widget.name}');
      return await coinProvider.getCoinsByCountry(widget.name);
    } catch (e) {
      _log.severe('Error loading coins for country', e);
      rethrow;
    }
  }

  Future<void> _handleToggleOwnership(int coinId) async {
    final userCoinProvider = Provider.of<UserCoinProvider>(
      context,
      listen: false,
    );
    final prefs = UserPreferences();

    final isOwned = await userCoinProvider.checkIfUserOwnsCoin(coinId);

    if (isOwned && prefs.removalConfirmation) {
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
          Column(
            children: [
              // Header banner
              FutureBuilder<List<Coin>>(
                future: _coinsFuture,
                builder: (context, snapshot) {
                  final coins = snapshot.data ?? [];
                  final ownedCoins =
                      coins
                          .where(
                            (coin) => userCoinProvider.ownedCoinsCount.contains(
                              coin.id,
                            ),
                          )
                          .length;
                  final totalCoins = coins.length;

                  return CoinBanner(
                    name: widget.name,
                    owned: ownedCoins,
                    total: totalCoins,
                  );
                },
              ),

              // Main content
              Expanded(
                child: FutureBuilder<List<Coin>>(
                  future: _coinsFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    if (snapshot.hasError) {
                      _log.severe('Error loading coins', snapshot.error);
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
                            Text('Failed to load coins: ${snapshot.error}'),
                            const SizedBox(height: 16),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _coinsFuture = _loadCoinsForCountry();
                                });
                              },
                              child: const Text('Retry'),
                            ),
                          ],
                        ),
                      );
                    }

                    return CoinsFilterCountryGrid(
                      coins: snapshot.data!,
                      ownedCoins: userCoinProvider.ownedCoinsCount,
                      onToggleCoin: (coinId) => _handleToggleOwnership(coinId),
                    );
                  },
                ),
              ),
            ],
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

import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/presentation/providers/coin_mint_provider.dart';
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
    } catch (e, s) {
      _log.severe('Error loading coins for country ${widget.name}', e, s);
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
    final coinProvider = Provider.of<CoinProvider>(context, listen: false);

    try {
      final isOwned = await userCoinProvider.checkIfUserOwnsCoin(coinId);

      // Only show confirmation dialog if needed
      if (isOwned && userPrefsProvider.removalConfirmation) {
        try {
          // Get the coin to check its country
          final coin = await coinProvider.getCoinById(coinId);

          // Skip confirmation for German coins
          if (coin.country != CountryNames.GERMANY) {
            if (!mounted) return;
            final confirmed = await ConfirmationDialog.show(context: context);
            if (!confirmed) return;
          }
        } catch (e) {
          _log.warning(
            'Error fetching coin details, showing confirmation dialog as fallback',
            e,
          );
          // If there's any error fetching the coin, fall back to showing the dialog
          if (!mounted) return;
          final confirmed = await ConfirmationDialog.show(context: context);
          if (!confirmed) return;
        }
      }

      await userCoinProvider.toggleCoinOwnership(coinId);
    } catch (e, s) {
      _log.severe('Error toggling coin ownership for coinId $coinId', e, s);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error updating coin status: ${e.toString()}'),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final userCoinProvider = context.watch<UserCoinProvider>();
    final coinMintProvider = Provider.of<CoinMintProvider>(
      context,
      listen: false,
    );

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              // HEADER BANNER
              FutureBuilder<List<Coin>>(
                future: _coinsFuture,
                builder: (context, coinsSnapshot) {
                  final totalCoins = coinsSnapshot.data?.length ?? 0;

                  return FutureBuilder<int>(
                    future: userCoinProvider.getOwnedCoinCountForCountry(
                      widget.name,
                    ),
                    builder: (context, ownedSnapshot) {
                      final ownedCoins = ownedSnapshot.data ?? 0;

                      return CoinCountryBanner(
                        name: widget.name,
                        owned: ownedCoins,
                        total: totalCoins,
                      );
                    },
                  );
                },
              ),

              // GRID (BODY)
              Expanded(
                child: _buildCountryGrid(
                  userCoinProvider.ownedCoinIds,
                  coinMintProvider,
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
                icon: Icon(Icons.adaptive.arrow_back),
                onPressed: () => context.pop(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCountryGrid(
    Set<int> ownedCoinIds,
    CoinMintProvider coinMintProvider,
  ) {
    return FutureBuilder<List<Coin>>(
      future: _coinsFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          _log.severe(
            'Error loading coins in _buildCountryGrid',
            snapshot.error,
          );
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline, size: 48, color: Colors.red),
                const SizedBox(height: 16),
                Text('Failed to load coins: ${snapshot.error}'),
              ],
            ),
          );
        }

        final coins = snapshot.data ?? [];

        return CoinsFilterCountryGrid(
          coins: coins,
          ownedCoins: ownedCoinIds,
          onToggleCoin: _handleToggleOwnership,
          onToggleMintMark:
              (coinId, mintMark) =>
                  coinMintProvider.toggleMintMark(coinId, mintMark),
        );
      },
    );
  }
}

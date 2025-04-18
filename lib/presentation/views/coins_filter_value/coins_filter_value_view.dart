import 'package:coinllector_app/data/datasources/local/preferences/user_preferences.dart';
import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/presentation/providers/coin_provider.dart';
import 'package:coinllector_app/presentation/providers/user_coin_provider.dart';
import 'package:coinllector_app/presentation/views/coins_filter_value/widgets/body/coins_filter_value_grid.dart';
import 'package:coinllector_app/presentation/views/coins_filter_value/widgets/header/header.dart';
import 'package:coinllector_app/shared/components/confirmation_dialog.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

class CoinsFilterView extends StatefulWidget {
  const CoinsFilterView({super.key, required this.type});

  final CoinType type;

  @override
  State<CoinsFilterView> createState() => _CoinsFilterViewState();
}

class _CoinsFilterViewState extends State<CoinsFilterView> {
  final _log = Logger('COINS_BY_TYPE_VIEW');
  late Future<List<Coin>> _coinsFuture;

  @override
  void initState() {
    super.initState();
    _coinsFuture = _loadCoinsForType();
  }

  Future<List<Coin>> _loadCoinsForType() async {
    final coinProvider = Provider.of<CoinProvider>(context, listen: false);

    try {
      _log.info('Loading coins for type: ${widget.type}');
      return await coinProvider.getCoinsByType(widget.type);
    } catch (e) {
      _log.severe('Error loading coins for type', e);
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
                    type: widget.type,
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
                                  _coinsFuture = _loadCoinsForType();
                                });
                              },
                              child: const Text('Retry'),
                            ),
                          ],
                        ),
                      );
                    }

                    return CoinsFilterValueGrid(
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

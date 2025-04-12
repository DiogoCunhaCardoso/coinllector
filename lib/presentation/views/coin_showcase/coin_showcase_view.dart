import 'package:coinllector_app/config/router/routes.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/data/datasources/local/preferences/user_preferences.dart';
import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/domain/entities/country.dart';
import 'package:coinllector_app/presentation/providers/country_provider.dart';
import 'package:coinllector_app/presentation/providers/user_coin_provider.dart';
import 'package:coinllector_app/presentation/views/coin_showcase/widgets/showcase_buttons.dart';
import 'package:coinllector_app/presentation/views/coin_showcase/widgets/showcase_description.dart';
import 'package:coinllector_app/presentation/views/coin_showcase/widgets/showcase_header.dart';
import 'package:coinllector_app/presentation/views/coin_showcase/widgets/showcase_quality_selector.dart';
import 'package:coinllector_app/presentation/views/coin_showcase/widgets/showcase_stats.dart';
import 'package:coinllector_app/shared/components/confirmation_dialog.dart';
import 'package:coinllector_app/shared/enums/coin_quality_enum.dart';
import 'package:coinllector_app/utils/text_display.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

class CoinShowcase extends StatefulWidget {
  const CoinShowcase({
    super.key,
    required this.coin,
    required this.coins,
    required this.currentIndex,
  });

  final Coin coin;
  final List<Coin> coins;
  final int currentIndex;

  @override
  State<CoinShowcase> createState() => _CoinShowcaseState();
}

class _CoinShowcaseState extends State<CoinShowcase> {
  final _log = Logger('COINS_SHOWCASE');
  int _selectedQualityIndex = -1;

  // COIN NAVIGATION -------------------------------------------------------------------

  void _navigateToCoin(int newIndex) {
    if (newIndex < 0 || newIndex >= widget.coins.length) return;

    context.pushReplacement(
      AppRoutes.coinsShowcase(widget.coins[newIndex]),
      extra: {
        'coin': widget.coins[newIndex],
        'coins': widget.coins,
        'currentIndex': newIndex,
      },
    );
  }

  // TOGGLE OWNERSHIP -------------------------------------------------------------------

  Future<void> _handleToggleOwnership() async {
    final userCoinProvider = Provider.of<UserCoinProvider>(
      context,
      listen: false,
    );
    final prefs = UserPreferences();

    final isOwned = await userCoinProvider.checkIfUserOwnsCoin(widget.coin.id);

    if (isOwned && prefs.removalConfirmation) {
      if (!mounted) return;

      final confirmed = await ConfirmationDialog.show(context: context);

      if (!confirmed) return;
    }

    await userCoinProvider.toggleCoinOwnership(widget.coin.id);
  }

  // SCREEN -----------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    final userCoinProvider = Provider.of<UserCoinProvider>(context);
    final countryProvider = Provider.of<CountryProvider>(
      context,
      listen: false,
    );

    final isOwned = userCoinProvider.isOwned(widget.coin.id);

    final prefs = UserPreferences();

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              FutureBuilder<Country?>(
                future: countryProvider.getCountry(widget.coin.country),
                builder: (context, snapshot) {
                  final country = snapshot.data;
                  return ShowcaseHeader(
                    country: country,
                    isOwned: isOwned,
                    onToggleOwnership: (_) => _handleToggleOwnership(),
                  );
                },
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 80),
                  child: Column(
                    children: [
                      const SizedBox(height: 64),
                      ShowcaseStats(coin: widget.coin),
                      const SizedBox(height: AppSizes.p24),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSizes.p16,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ...prefs.coinQuality
                                ? [
                                  ShowcaseQualitySelector(
                                    selectedQualityIndex: _selectedQualityIndex,
                                    onQualitySelected: (index) async {
                                      // Keep track of selected index
                                      setState(() {
                                        _selectedQualityIndex = index;
                                      });

                                      // Update quality in repository
                                      final success = await userCoinProvider
                                          .updateCoinQuality(
                                            widget.coin.id,
                                            CoinQuality.values[index],
                                          );

                                      // Optionally show feedback if update failed
                                      if (!success && mounted) {
                                        ScaffoldMessenger.of(
                                          context,
                                        ).showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                              'Failed to update coin quality',
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                  const SizedBox(height: AppSizes.p24),
                                ]
                                : [],
                            const SizedBox(height: AppSizes.p24),
                            ShowcaseDescription(coin: widget.coin),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // Coin Image
          Positioned(
            top: kToolbarHeight + 24 + AppSizes.p32,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                width: 148,
                widget.coin.image,
                fit: BoxFit.contain,
              ),
            ),
          ),

          // App Bar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(title: Text(showcaseTitle(widget.coin.type.name))),
          ),

          // Navigation Buttons
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: ShowcaseButtons(
              onBackPressed:
                  widget.currentIndex > 0
                      ? () {
                        final newIndex = widget.currentIndex - 1;
                        _log.info('Going to coin at index: $newIndex');
                        _navigateToCoin(newIndex);
                      }
                      : null,
              onNextPressed:
                  widget.currentIndex < widget.coins.length - 1
                      ? () {
                        final newIndex = widget.currentIndex + 1;
                        _log.info('Going to coin at index: $newIndex');
                        _navigateToCoin(newIndex);
                      }
                      : null,
            ),
          ),
        ],
      ),
    );
  }
}

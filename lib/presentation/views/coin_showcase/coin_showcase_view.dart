import 'package:coinllector_app/config/router/routes.dart';
import 'package:coinllector_app/data/local/database/database_service.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/domain/entities/country.dart';
import 'package:coinllector_app/presentation/views/coin_showcase/widgets/showcase_buttons.dart';
import 'package:coinllector_app/presentation/views/coin_showcase/widgets/showcase_description.dart';
import 'package:coinllector_app/presentation/views/coin_showcase/widgets/showcase_header.dart';
import 'package:coinllector_app/presentation/views/coin_showcase/widgets/showcase_quality_selector.dart';
import 'package:coinllector_app/presentation/views/coin_showcase/widgets/showcase_stats.dart';
import 'package:coinllector_app/utils/text_display.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';

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
  final DatabaseService _databaseService = DatabaseService.instance;
  int _selectedQualityIndex = -1;
  Country? _country;
  bool _isOwned = false; // Track if this coin is owned

  @override
  void initState() {
    super.initState();
    _loadCountry();
    _checkIfOwned();
  }

  Future<void> _loadCountry() async {
    try {
      await _databaseService.database;
      final country = await _databaseService.countryRepository.getCountryByEnum(
        widget.coin.country,
      );

      setState(() {
        _country = country;
      });
    } catch (e) {
      _log.info('Error loading country: $e');
    }
  }

  // Method to check if the coin is owned
  Future<void> _checkIfOwned() async {
    try {
      await _databaseService.database;
      final ownedCoins =
          await _databaseService.userCoinRepository.getOwnedCoins();
      setState(() {
        _isOwned = ownedCoins.contains(widget.coin.id);
      });
    } catch (e) {
      _log.info('Error checking ownership: $e');
    }
  }

  // Method to toggle ownership
  Future<void> _toggleOwnership(bool owned) async {
    try {
      if (owned) {
        await _databaseService.userCoinRepository.addCoin(widget.coin.id);
      } else {
        await _databaseService.userCoinRepository.removeCoin(widget.coin.id);
      }
      setState(() {
        _isOwned = owned;
      });
    } catch (e) {
      _log.info('Error toggling ownership: $e');
    }
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              ShowcaseHeader(
                country: _country,
                isOwned: _isOwned,
                onToggleOwnership: _toggleOwnership,
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
                            ShowcaseQualitySelector(
                              selectedQualityIndex: _selectedQualityIndex,
                              onQualitySelected: (index) {
                                setState(() => _selectedQualityIndex = index);
                              },
                            ),
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

          // IMAGE
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

          // APP BAR
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              title: Text(showcaseTitle(widget.coin.type.name)),
              leading: PopScope(
                canPop: false,
                onPopInvokedWithResult: (didPop, result) {
                  if (!didPop) {
                    context.pop(_isOwned);
                    return;
                  }
                },
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    context.pop(_isOwned);
                  },
                ),
              ),
            ),
          ),

          // BOTTOM NAVIGATION
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

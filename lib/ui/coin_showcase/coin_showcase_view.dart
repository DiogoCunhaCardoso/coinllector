import 'package:coinllector_app/models/coin.dart';
import 'package:coinllector_app/models/country.dart';
import 'package:coinllector_app/services/database/database_service.dart';
import 'package:coinllector_app/themes/sizes.dart';
import 'package:coinllector_app/ui/coin_showcase/widgets/showcase_buttons.dart';
import 'package:coinllector_app/ui/coin_showcase/widgets/showcase_description.dart';
import 'package:coinllector_app/ui/coin_showcase/widgets/showcase_header.dart';
import 'package:coinllector_app/ui/coin_showcase/widgets/showcase_quality_selector.dart';
import 'package:coinllector_app/ui/coin_showcase/widgets/showcase_stats.dart';
import 'package:coinllector_app/utils/text_display.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';

class CoinShowcase extends StatefulWidget {
  const CoinShowcase({super.key, required this.coin});

  final Coin coin;

  @override
  State<CoinShowcase> createState() => _CoinShowcaseState();
}

class _CoinShowcaseState extends State<CoinShowcase> {
  final _log = Logger('COINS_SHOWCASE');
  final DatabaseService _databaseService = DatabaseService.instance;
  int _selectedQualityIndex = -1;
  Country? _country;

  @override
  void initState() {
    super.initState();
    _loadCountry();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              ShowcaseHeader(country: _country),
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

          // POSITIONED ELEMENTS ----------------------------------------------------------------------------------

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
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => context.pop(),
              ),
            ),
          ),

          // BOTTOM NAVIGATION
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: ShowcaseButtons(onBackPressed: () {}, onNextPressed: () {}),
          ),
        ],
      ),
    );
  }
}

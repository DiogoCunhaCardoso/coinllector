import 'package:coinllector_app/config/router/routes.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/presentation/providers/coin_provider.dart';
import 'package:coinllector_app/presentation/providers/user_coin_provider.dart';
import 'package:coinllector_app/shared/components/highest_coin_card.dart';
import 'package:coinllector_app/presentation/views/profile/components/profile_header.dart';
import 'package:coinllector_app/presentation/views/profile/components/profile_stats_card.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  bool _isLoading = true;
  List<MapEntry<CoinType, double>> _topTypePercentages = [];
  List<MapEntry<CountryNames, double>> _topCountryPercentages = [];
  bool _showTypes = true; // Toggle between showing types or countries

  @override
  void initState() {
    super.initState();
    _loadTopPercentages();
  }

  Future<void> _loadTopPercentages() async {
    setState(() => _isLoading = true);

    try {
      final coinProvider = Provider.of<CoinProvider>(context, listen: false);
      final userCoinProvider = Provider.of<UserCoinProvider>(
        context,
        listen: false,
      );

      // Make sure providers are initialized
      await coinProvider.init();
      await userCoinProvider.init();

      // Load all coins by type and country
      final coinsByType = await coinProvider.loadAllCoinsByType();
      final coinsByCountry = await coinProvider.loadAllCoinsByCountry();

      // Calculate percentages for types
      final typePercentages = <CoinType, double>{};
      for (final type in CoinType.values) {
        await userCoinProvider.loadCoinsByType(type);
        final owned = userCoinProvider.coinsByFilterCount;
        final total = coinsByType[type]?.length ?? 0;

        if (total > 0) {
          typePercentages[type] = (owned / total) * 100;
        } else {
          typePercentages[type] = 0;
        }
      }

      // Calculate percentages for countries
      final countryPercentages = <CountryNames, double>{};
      final ownedByCountry = userCoinProvider.coinsByCountry;

      for (final country in CountryNames.values) {
        final owned = ownedByCountry[country] ?? 0;
        final total = coinsByCountry[country]?.length ?? 0;

        if (total > 0) {
          countryPercentages[country] = (owned / total) * 100;
        } else {
          countryPercentages[country] = 0;
        }
      }

      // Sort and get top 3
      _topTypePercentages =
          typePercentages.entries.toList()
            ..sort((a, b) => b.value.compareTo(a.value));

      _topCountryPercentages =
          countryPercentages.entries.toList()
            ..sort((a, b) => b.value.compareTo(a.value));

      // Take only top 3
      if (_topTypePercentages.length > 3) {
        _topTypePercentages = _topTypePercentages.sublist(0, 3);
      }

      if (_topCountryPercentages.length > 3) {
        _topCountryPercentages = _topCountryPercentages.sublist(0, 3);
      }

      setState(() => _isLoading = false);
    } catch (e) {
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final coinProvider = Provider.of<CoinProvider>(context);
    final userCoinProvider = Provider.of<UserCoinProvider>(context);

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              const ProfileHeader(),

              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: AppSizes.p24,
                  horizontal: AppSizes.p16,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total", style: textTheme.bodyMedium),
                      SizedBox(height: AppSizes.p8),
                      ProfileStatsCard(
                        title: "Total Coins",
                        coinsOwned: userCoinProvider.ownedCoinCount.toString(),
                        totalCoins: coinProvider.totalCoinCount.toString(),
                      ),
                      SizedBox(height: AppSizes.p24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text("Highest", style: textTheme.bodyMedium),
                              SizedBox(width: AppSizes.p16),
                              ToggleButtons(
                                isSelected: [_showTypes, !_showTypes],
                                onPressed: (index) {
                                  setState(() {
                                    _showTypes = index == 0;
                                  });
                                },
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: AppSizes.p8,
                                    ),
                                    child: Text("Types"),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: AppSizes.p8,
                                    ),
                                    child: Text("Countries"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed:
                                () => context.go(AppRoutes.profileStatistics()),
                            style: TextButton.styleFrom(
                              foregroundColor: colorScheme.onSurface,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("See All", style: textTheme.labelMedium),
                                const SizedBox(width: AppSizes.p8),
                                Icon(
                                  Icons.adaptive.arrow_forward,
                                  size: 16,
                                  color: colorScheme.onSurface,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: AppSizes.p16),

                      _isLoading
                          ? const Center(child: CircularProgressIndicator())
                          : _showTypes
                          ? _buildTopTypes(userCoinProvider, coinProvider)
                          : _buildTopCountries(userCoinProvider, coinProvider),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // APP BAR -------------------------
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

  Widget _buildTopTypes(
    UserCoinProvider userCoinProvider,
    CoinProvider coinProvider,
  ) {
    if (_topTypePercentages.isEmpty) {
      return const Center(child: Text("No coin type data available"));
    }

    return Column(
      children:
          _topTypePercentages.map((entry) {
            return Padding(
              padding: const EdgeInsets.only(bottom: AppSizes.p8),
              child: FutureBuilder(
                future: userCoinProvider.loadCoinsByType(entry.key),
                builder: (context, snapshot) {
                  return HighestCoinCard(
                    countryName: entry.key.name,
                    coinsOwned: userCoinProvider.coinsByFilterCount.toString(),
                    totalCoins:
                        coinProvider.allCoinsByType[entry.key]?.length
                            .toString() ??
                        "0",
                    // You can add appropriate images for coin types
                    image: "assets/value/value-${entry.key}.png",
                  );
                },
              ),
            );
          }).toList(),
    );
  }

  Widget _buildTopCountries(
    UserCoinProvider userCoinProvider,
    CoinProvider coinProvider,
  ) {
    if (_topCountryPercentages.isEmpty) {
      return const Center(child: Text("No country data available"));
    }

    return Column(
      children:
          _topCountryPercentages.map((entry) {
            final owned = userCoinProvider.coinsByCountry[entry.key] ?? 0;
            final total =
                coinProvider.allCoinsByCountry[entry.key]?.length ?? 0;

            return Padding(
              padding: const EdgeInsets.only(bottom: AppSizes.p8),
              child: HighestCoinCard(
                countryName: entry.key.name,
                coinsOwned: owned.toString(),
                totalCoins: total.toString(),
                image: "assets/country/${entry.key}-flag.png",
              ),
            );
          }).toList(),
    );
  }
}

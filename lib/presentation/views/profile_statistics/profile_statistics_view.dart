import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/presentation/providers/coin_provider.dart';
import 'package:coinllector_app/presentation/providers/user_coin_provider.dart';
import 'package:coinllector_app/presentation/views/profile_statistics/components/statistics_list.dart';
import 'package:coinllector_app/presentation/views/profile_statistics/components/statistics_tabs.dart';
import 'package:flutter/material.dart';
import 'package:coinllector_app/shared/components/custom_app_bar.dart';
import 'package:provider/provider.dart';
import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:logging/logging.dart';

class ProfileStatisticsView extends StatefulWidget {
  const ProfileStatisticsView({super.key});

  @override
  State<ProfileStatisticsView> createState() => _ProfileStatisticsViewState();
}

class _ProfileStatisticsViewState extends State<ProfileStatisticsView> {
  final _log = Logger("PROFILE_STATS_VIEW");
  int _selectedIndex = 0;
  bool _isLoading = true;

  // Data containers
  Map<CoinType, List<Coin>> _coinsByType = {};
  Map<CountryNames, List<Coin>> _coinsByCountry = {};
  Map<CoinType, int> _ownedByType = {};
  Map<CountryNames, int> _ownedByCountry = {};

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    setState(() => _isLoading = true);

    try {
      final coinProvider = Provider.of<CoinProvider>(context, listen: false);
      final userCoinProvider = Provider.of<UserCoinProvider>(
        context,
        listen: false,
      );

      // Load all data in parallel
      final futures = await Future.wait([
        coinProvider.loadAllCoinsByType(),
        coinProvider.loadAllCoinsByCountry(),
        _loadOwnedCoinsByType(userCoinProvider),
        userCoinProvider.init(), // Make sure user coin provider is initialized
      ]);

      setState(() {
        _coinsByType = futures[0] as Map<CoinType, List<Coin>>;
        _coinsByCountry = futures[1] as Map<CountryNames, List<Coin>>;
        _ownedByType = futures[2] as Map<CoinType, int>;
        _ownedByCountry = userCoinProvider.coinsByCountry;
        _isLoading = false;
      });
    } catch (e) {
      _log.severe("Error loading statistics data: $e");
      setState(() => _isLoading = false);
    }
  }

  // Helper method to load owned coins by type
  Future<Map<CoinType, int>> _loadOwnedCoinsByType(
    UserCoinProvider provider,
  ) async {
    final Map<CoinType, int> result = {};

    for (final type in CoinType.values) {
      await provider.loadCoinsByType(type);
      result[type] = provider.coinsByFilterCount;
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Statistics", scaffoldContext: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.p16,
          vertical: AppSizes.p24,
        ),
        child: Column(
          children: [
            StatisticsTabs(
              selectedIndex: _selectedIndex,
              onTabChanged: (index) => setState(() => _selectedIndex = index),
            ),
            const SizedBox(height: AppSizes.p16),
            _isLoading
                ? const Center(child: CircularProgressIndicator())
                : Expanded(
                  child: StatisticsList(
                    showByType: _selectedIndex == 0,
                    coinsByType: _coinsByType,
                    coinsByCountry: _coinsByCountry,
                    ownedByType: _ownedByType,
                    ownedByCountry: _ownedByCountry,
                  ),
                ),
          ],
        ),
      ),
    );
  }
}

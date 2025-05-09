import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/presentation/providers/user_coin_provider.dart';

import 'package:coinllector_app/presentation/views/profile_statistics/components/statistics_tabs.dart';
import 'package:coinllector_app/shared/components/highest_coin_card.dart';
import 'package:flutter/material.dart';
import 'package:coinllector_app/shared/components/custom_app_bar.dart';
import 'package:provider/provider.dart';

class ProfileStatisticsView extends StatefulWidget {
  const ProfileStatisticsView({super.key});

  @override
  State<ProfileStatisticsView> createState() => _ProfileStatisticsViewState();
}

class _ProfileStatisticsViewState extends State<ProfileStatisticsView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final userCoinProvider = Provider.of<UserCoinProvider>(context);

    final statsList =
        _selectedIndex == 0
            ? userCoinProvider.topTypeStats
            : userCoinProvider.topCountryStats;

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

            // Display Highest Coin Cards
            if (userCoinProvider.isLoading)
              const Center(child: CircularProgressIndicator())
            else if (statsList == null || statsList.isEmpty)
              const Center(child: Text("No statistics available"))
            else
              Expanded(
                child: ListView(
                  children:
                      statsList
                          .map(
                            (stats) => HighestCoinCard(
                              stats: stats,
                              isCountry: _selectedIndex == 1,
                            ),
                          )
                          .toList(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

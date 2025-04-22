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
    // PROVIDER --------------------------------------------------------------
    final userCoinProvider = Provider.of<UserCoinProvider>(context);

    // CONTENT ---------------------------------------------------------------
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
            else if (userCoinProvider.topCountryStats == null ||
                userCoinProvider.topCountryStats!.isEmpty)
              const Center(child: Text("No country stats available"))
            else
              // Display full list of Highest Coin Cards
              Expanded(
                child: ListView(
                  children:
                      userCoinProvider.topCountryStats!
                          .map((stats) => HighestCoinCard(stats: stats))
                          .toList(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

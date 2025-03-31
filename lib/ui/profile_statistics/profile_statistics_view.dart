import 'package:coinllector_app/themes/sizes.dart';
import 'package:coinllector_app/ui/profile_statistics/components/statistics_list.dart';
import 'package:coinllector_app/ui/profile_statistics/components/statistics_tabs.dart';
import 'package:coinllector_app/ui/profile_statistics/statistics_provider.dart';
import 'package:flutter/material.dart';
import 'package:coinllector_app/shared_components/custom_app_bar.dart';
import 'package:coinllector_app/services/database/database_service.dart';

class ProfileStatisticsView extends StatefulWidget {
  const ProfileStatisticsView({super.key});

  @override
  State<ProfileStatisticsView> createState() => _ProfileStatisticsViewState();
}

class _ProfileStatisticsViewState extends State<ProfileStatisticsView> {
  final StatisticsProvider _provider = StatisticsProvider(
    DatabaseService.instance,
  );
  int _selectedIndex = 0;
  StatisticsData? _data;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    try {
      final data = await _provider.fetchStatisticsData();
      setState(() {
        _data = data;
        _isLoading = false;
      });
    } catch (e) {
      setState(() => _isLoading = false);
    }
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
            _isLoading || _data == null
                ? const Center(child: CircularProgressIndicator())
                : Expanded(
                  child: StatisticsList(
                    showByType: _selectedIndex == 0,
                    coinsByType: _data!.coinsByType,
                    coinsByCountry: _data!.coinsByCountry,
                    ownedByType: _data!.ownedByType,
                    ownedByCountry: _data!.ownedByCountry,
                  ),
                ),
          ],
        ),
      ),
    );
  }
}

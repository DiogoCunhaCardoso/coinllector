import 'package:coinllector_app/routing/routes.dart';
import 'package:coinllector_app/services/database/database_service.dart';
import 'package:coinllector_app/themes/colors.dart';
import 'package:coinllector_app/themes/sizes.dart';
import 'package:coinllector_app/shared_components/highest_coin_card.dart';
import 'package:coinllector_app/themes/typography.dart';
import 'package:coinllector_app/ui/profile/components/profile_header.dart';
import 'package:coinllector_app/ui/profile/components/stats_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final DatabaseService _databaseService = DatabaseService.instance;
  final _log = Logger('PROFILE_VIEW');

  int _owndedCoinCount = 0;
  int _totalCoinCount = 0;

  @override
  void initState() {
    super.initState();
    _getAllCoinsCount();
  }

  Future<void> _getAllCoinsCount() async {
    final ownedCoinCount =
        await _databaseService.userCoinRepository.getOwnedCoinCount();
    final allCoinCount = await _databaseService.coinRepository.getCoinCount();

    setState(() {
      _owndedCoinCount = ownedCoinCount;
      _totalCoinCount = allCoinCount;
    });

    _log.info("Got owned coin count - $ownedCoinCount");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                  gradient: AppColors.gradient,
                ),
                padding: const EdgeInsets.only(
                  top: kToolbarHeight + 32,
                  left: 24,
                  right: 24,
                  bottom: 24,
                ),
                child: const ProfileHeader(),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: AppSizes.p24,
                  horizontal: AppSizes.p16,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total", style: AppTextStyles.body),
                      SizedBox(height: AppSizes.p8),
                      StatsCard(
                        title: "Total Coins",
                        coinsOwned: _owndedCoinCount.toString(),
                        totalCoins: _totalCoinCount.toString(),
                      ),
                      SizedBox(height: AppSizes.p24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Highest", style: AppTextStyles.body),
                          TextButton(
                            onPressed:
                                () => context.go(AppRoutes.profileStatistics()),
                            style: TextButton.styleFrom(
                              foregroundColor: AppColors.onSurface,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("See All", style: AppTextStyles.label),
                                const SizedBox(width: AppSizes.p8),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 16,
                                  color: AppColors.onSurface,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const HighestCoinCard(
                        countryName: "France",
                        coinsOwned: "20",
                        totalCoins: "25",
                        image:
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Flag_of_France.svg/1024px-Flag_of_France.svg.png",
                      ),
                      SizedBox(height: AppSizes.p8),
                      /*          padding: EdgeInsets.only(
                      top: index == 0 ? AppSizes.p24 : AppSizes.p8,
                    ), */
                      const HighestCoinCard(
                        countryName: "France",
                        coinsOwned: "20",
                        totalCoins: "25",
                        image:
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Flag_of_France.svg/1024px-Flag_of_France.svg.png",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // Transparent AppBar with Menu Button (Hamburger Icon)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.menu, color: AppColors.onSurface),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

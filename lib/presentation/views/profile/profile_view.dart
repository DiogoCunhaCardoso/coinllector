import 'package:coinllector_app/config/router/routes.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/presentation/providers/coin_provider.dart';
import 'package:coinllector_app/presentation/providers/user_coin_provider.dart';
import 'package:coinllector_app/presentation/providers/user_prefs_provider.dart';
import 'package:coinllector_app/presentation/views/profile/components/image_picker.dart';
import 'package:coinllector_app/presentation/views/profile/components/profile_header.dart';
import 'package:coinllector_app/presentation/views/profile/components/profile_stats_card.dart';
import 'package:coinllector_app/shared/components/highest_coin_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';
import 'package:image_picker/image_picker.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final _log = Logger("PROFILE_VIEW");

  final ImagePicker _picker = ImagePicker();

  void _showImagePickerSheet() {
    ImagePickerBottomSheet.show(
      context: context,
      onCameraTap: () => _handlePickImage(ImageSource.camera),
      onGalleryTap: () => _handlePickImage(ImageSource.gallery),
    );
  }

  Future<void> _handlePickImage(ImageSource source) async {
    try {
      final pickedImage = await _picker.pickImage(source: source);
      if (pickedImage == null) return;

      // Save to provider
      if (mounted) {
        final userPrefsProvider = Provider.of<UserPreferencesProvider>(
          context,
          listen: false,
        );
        await userPrefsProvider.updateProfileImage(pickedImage.path);
      }
    } on PlatformException catch (e) {
      _log.warning("Error Picking Image from Camera: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final coinProvider = Provider.of<CoinProvider>(context);
    final userCoinProvider = Provider.of<UserCoinProvider>(context);
    final userPrefsProvider = Provider.of<UserPreferencesProvider>(
      context,
      listen: false,
    );

    final topStats = userCoinProvider.topCountryStats;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              ProfileHeader(
                onEditTap: _showImagePickerSheet,
                pfp: userPrefsProvider.profileImageFile,
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
                      Text("Total", style: textTheme.titleSmall),
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
                              Text("Highest", style: textTheme.titleSmall),
                              SizedBox(width: AppSizes.p16),
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
                                Text(
                                  "See All",
                                  style: textTheme.labelLarge!.copyWith(
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
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
                      if (userCoinProvider.isLoading)
                        const Center(child: CircularProgressIndicator())
                      else if (topStats == null || topStats.isEmpty)
                        const Text("No country stats available")
                      else
                        Column(
                          children:
                              topStats
                                  .take(3)
                                  .map((stats) => HighestCoinCard(stats: stats))
                                  .toList(),
                        ),
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
}

import 'package:coinllector_app/config/router/routes.dart';
import 'package:coinllector_app/presentation/providers/coin_provider.dart';
import 'package:coinllector_app/presentation/providers/country_provider.dart';
import 'package:coinllector_app/presentation/providers/user_prefs_provider.dart';
import 'package:coinllector_app/presentation/views/settings/widgets/settings_card.dart';
import 'package:coinllector_app/shared/components/custom_app_bar.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final prefs = context.watch<UserPreferencesProvider>();
    final countryProvider = context.read<CountryProvider>();
    final coinProvider = context.read<CoinProvider>();

    return Scaffold(
      appBar: CustomAppBar(
        title: "Settings",
        scaffoldContext: context,
        showMenuIcon: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.p16,
          vertical: AppSizes.p24,
        ),
        child: ListView(
          children: [
            SettingsCard(
              title: "Coin Mints",
              hasSwitch: true,
              value: prefs.coinMints,
              onChanged: (value) {
                prefs.updateCoinMints(value);
              },
            ),
            const SizedBox(height: AppSizes.p8),
            SettingsCard(
              title: "Show Microstates",
              hasSwitch: true,
              value: prefs.microStates,
              onChanged: (value) {
                prefs.updateMicroStates(value);

                countryProvider.refreshCountries();
                for (final type in CoinType.values) {
                  coinProvider.refreshCoinsByType(type);
                }
              },
            ),
            const SizedBox(height: AppSizes.p8),
            SettingsCard(
              title: "Coin Quality",
              hasSwitch: true,
              value: prefs.coinQuality,
              onChanged: (value) {
                prefs.updateCoinQuality(value);
              },
            ),
            const SizedBox(height: AppSizes.p8),
            SettingsCard(
              title: "Removal Confirmation",
              hasSwitch: true,
              value: prefs.removalConfirmation,
              onChanged: (value) {
                prefs.updateRemovalConfirmation(value);
              },
            ),
            const SizedBox(height: AppSizes.p8),
            SettingsCard(title: "Language", hasSwitch: false),
            const SizedBox(height: AppSizes.p8),
            SettingsCard(
              title: "About",
              hasSwitch: false,
              onTap: () => context.go(AppRoutes.settingsAbout()),
            ),
            const SizedBox(height: AppSizes.p8),
            SettingsCard(title: "Terms of Service", hasSwitch: false),
          ],
        ),
      ),
    );
  }
}

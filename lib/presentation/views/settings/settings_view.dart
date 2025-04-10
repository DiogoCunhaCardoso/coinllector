import 'package:coinllector_app/config/router/routes.dart';
import 'package:coinllector_app/data/datasources/local/preferences/user_preferences.dart';
import 'package:coinllector_app/presentation/providers/coin_provider.dart';
import 'package:coinllector_app/presentation/providers/country_provider.dart';
import 'package:coinllector_app/presentation/views/settings/widgets/settings_card.dart';
import 'package:coinllector_app/shared/components/custom_app_bar.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  // LOCAL STATE
  final _prefs = UserPreferences();

  late bool _coinMintsEnabled;
  late bool _showMicrostatesEnabled;
  late bool _coinQualityEnabled;
  late bool _removalConfirmationEnabled;

  // INIT SHARED PREFERENCES
  @override
  void initState() {
    super.initState();

    _coinMintsEnabled = _prefs.coinMints;
    _showMicrostatesEnabled = _prefs.microStates;
    _coinQualityEnabled = _prefs.coinQuality;
    _removalConfirmationEnabled = _prefs.removalConfirmation;
  }

  @override
  Widget build(BuildContext context) {
    // Providers
    final countryProvider = Provider.of<CountryProvider>(
      context,
      listen: false,
    );

    final coinProvider = Provider.of<CoinProvider>(context, listen: false);

    //
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
              value: _coinMintsEnabled,
              onChanged: (value) {
                setState(() => _coinMintsEnabled = value);
                _prefs.coinMints = value;
              },
            ),
            const SizedBox(height: AppSizes.p8),
            SettingsCard(
              title: "Show Microstates",
              hasSwitch: true,
              value: _showMicrostatesEnabled,
              onChanged: (value) {
                setState(() => _showMicrostatesEnabled = value);
                _prefs.microStates = value;

                countryProvider.refreshCountries();
                final coinProvider = Provider.of<CoinProvider>(
                  context,
                  listen: false,
                );
                for (final type in CoinType.values) {
                  coinProvider.refreshCoinsByType(type);
                }
              },
            ),
            const SizedBox(height: AppSizes.p8),
            SettingsCard(
              title: "Coin Quality",
              hasSwitch: true,
              value: _coinQualityEnabled,
              onChanged: (value) {
                setState(() => _coinQualityEnabled = value);
                _prefs.coinQuality = value;
              },
            ),
            const SizedBox(height: AppSizes.p8),
            SettingsCard(
              title: "Removal Confirmation",
              hasSwitch: true,
              value: _removalConfirmationEnabled,
              onChanged: (value) {
                setState(() => _removalConfirmationEnabled = value);
                _prefs.removalConfirmation = value;
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

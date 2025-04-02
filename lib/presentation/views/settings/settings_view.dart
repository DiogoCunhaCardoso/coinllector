import 'package:coinllector_app/config/router/routes.dart';
import 'package:coinllector_app/presentation/views/settings/widgets/settings_card.dart';
import 'package:coinllector_app/shared/components/custom_app_bar.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  bool _coinMintsEnabled = true;
  bool _showMicrostatesEnabled = false;
  bool _coinQualityEnabled = true;
  bool _removalConfirmationEnabled = true;

  @override
  Widget build(BuildContext context) {
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
              onChanged: (value) => setState(() => _coinMintsEnabled = value),
            ),
            const SizedBox(height: AppSizes.p8),
            SettingsCard(
              title: "Show Microstates",
              hasSwitch: true,
              value: _showMicrostatesEnabled,
              onChanged:
                  (value) => setState(() => _showMicrostatesEnabled = value),
            ),
            const SizedBox(height: AppSizes.p8),
            SettingsCard(
              title: "Coin Quality",
              hasSwitch: true,
              value: _coinQualityEnabled,
              onChanged: (value) => setState(() => _coinQualityEnabled = value),
            ),
            const SizedBox(height: AppSizes.p8),
            SettingsCard(
              title: "Removal Confirmation",
              hasSwitch: true,
              value: _removalConfirmationEnabled,
              onChanged:
                  (value) =>
                      setState(() => _removalConfirmationEnabled = value),
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

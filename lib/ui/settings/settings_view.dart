import 'package:coinllector_app/routing/routes.dart';
import 'package:coinllector_app/shared_components/custom_app_bar.dart';
import 'package:coinllector_app/themes/colors.dart';
import 'package:coinllector_app/themes/sizes.dart';
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
            _buildSettingCard(
              title: "Coin Mints",
              hasSwitch: true,
              value: _coinMintsEnabled,
              onChanged: (value) => setState(() => _coinMintsEnabled = value),
            ),
            const SizedBox(height: AppSizes.p8),
            _buildSettingCard(
              title: "Show Microstates",
              hasSwitch: true,
              value: _showMicrostatesEnabled,
              onChanged:
                  (value) => setState(() => _showMicrostatesEnabled = value),
            ),
            const SizedBox(height: AppSizes.p8),
            _buildSettingCard(
              title: "Coin Quality",
              hasSwitch: true,
              value: _coinQualityEnabled,
              onChanged: (value) => setState(() => _coinQualityEnabled = value),
            ),
            const SizedBox(height: AppSizes.p8),
            _buildSettingCard(
              title: "Removal Confirmation",
              hasSwitch: true,
              value: _removalConfirmationEnabled,
              onChanged:
                  (value) =>
                      setState(() => _removalConfirmationEnabled = value),
            ),
            const SizedBox(height: AppSizes.p8),
            _buildSettingCard(title: "Language", hasSwitch: false),
            const SizedBox(height: AppSizes.p8),
            _buildSettingCard(
              title: "About",
              hasSwitch: false,
              onTap: () => context.go(AppRoutes.settingsAbout()),
            ),
            const SizedBox(height: AppSizes.p8),
            _buildSettingCard(title: "Terms of Service", hasSwitch: false),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingCard({
    required String title,
    required bool hasSwitch,
    bool? value,
    ValueChanged<bool>? onChanged,
    VoidCallback? onTap,
  }) {
    return SizedBox(
      height: 72,
      child: Card(
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.p16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: Theme.of(context).textTheme.titleMedium),
                if (hasSwitch)
                  Transform.scale(
                    scale: 0.9,
                    child: Switch(
                      value: value!,
                      onChanged: onChanged,
                      activeColor: AppColors.primary,
                    ),
                  )
                else
                  const Icon(
                    Icons.chevron_right,
                    color: AppColors.onSurfaceVariant,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

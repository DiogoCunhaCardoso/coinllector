import 'package:coinllector_app/domain/entities/country.dart';
import 'package:coinllector_app/shared/components/gradient_checkbox.dart';
import 'package:coinllector_app/shared/components/bottom_sheets/mints_sheet.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/shared/enums/mint.dart';
import 'package:coinllector_app/presentation/providers/coin_mint_provider.dart';
import 'package:coinllector_app/presentation/providers/user_prefs_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShowcaseHeader extends StatelessWidget {
  final Country? country;
  final bool isOwned;
  final ValueChanged<bool> onToggleOwnership;
  final int coinId;
  final Function(int, MintMark)? onToggleMintMark;

  const ShowcaseHeader({
    super.key,
    this.country,
    required this.isOwned,
    required this.onToggleOwnership,
    required this.coinId,
    this.onToggleMintMark,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final userPrefsProvider = Provider.of<UserPreferencesProvider>(context);
    final coinMintProvider = Provider.of<CoinMintProvider>(context);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
        ),
        color: colorScheme.surfaceContainerHighest,
      ),
      padding: const EdgeInsets.only(
        top: kToolbarHeight + 24,
        left: 24,
        right: 24,
        bottom: 24,
      ),
      height: 220,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 28,
            height: 28,
            child: GradientCheckbox(
              value: isOwned,
              onChanged: (value) async {
                if (country?.name == CountryNames.GERMANY &&
                    userPrefsProvider.coinMints) {
                  await _handleGermanCoin(context, coinMintProvider);
                } else {
                  onToggleOwnership(value);
                }
              },
            ),
          ),
          CircleAvatar(
            radius: 16,
            backgroundColor: colorScheme.surfaceContainerHighest,
            backgroundImage:
                country?.flagImage != null
                    ? AssetImage(country!.flagImage)
                    : null,
          ),
        ],
      ),
    );
  }

  Future<void> _handleGermanCoin(
    BuildContext context,
    CoinMintProvider coinMintProvider,
  ) async {
    // Get current mint marks for the coin
    final mints = await coinMintProvider.getMintMarksForCoin(coinId);
    final currentMints = mints.map((m) => m.mintMark).toList();

    // Show mint selection modal
    final selectedMints = await showMintSelectionModal(
      context,
      coinId,
      currentMints,
    );

    if (selectedMints != null) {
      // Handle the mints that need to be added or removed
      for (final mintMark in MintMark.values) {
        final hadMintBefore = currentMints.contains(mintMark);
        final hasNow = selectedMints.contains(mintMark);

        if (hadMintBefore && !hasNow) {
          // Remove mint mark
          await coinMintProvider.removeMintMark(coinId, mintMark);
          if (onToggleMintMark != null) {
            onToggleMintMark!(coinId, mintMark);
          }
        } else if (!hadMintBefore && hasNow) {
          // Add mint mark
          await coinMintProvider.addMintMark(coinId, mintMark);
          if (onToggleMintMark != null) {
            onToggleMintMark!(coinId, mintMark);
          }
        }
      }

      // If no mints are selected, remove the coin
      if (selectedMints.isEmpty && isOwned) {
        onToggleOwnership(false);
      }
      // If any mint is selected, ensure the coin is owned
      else if (selectedMints.isNotEmpty && !isOwned) {
        onToggleOwnership(true);
      }
    }
  }
}

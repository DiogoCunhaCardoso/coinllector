import 'package:coinllector_app/config/router/routes.dart';
import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/presentation/providers/coin_mint_provider.dart';
import 'package:coinllector_app/presentation/providers/user_prefs_provider.dart';
import 'package:coinllector_app/shared/components/bottom_sheets/mints_sheet.dart';
import 'package:coinllector_app/shared/components/coin_card_complex.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/shared/enums/mint.dart';
import 'package:coinllector_app/utils/get_coin_size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class CoinsFilterCountryGrid extends StatelessWidget {
  final List<Coin>? coins;
  final Set<int> ownedCoins;
  final ValueChanged<int> onToggleCoin;
  final Function(int, MintMark) onToggleMintMark;

  const CoinsFilterCountryGrid({
    super.key,
    required this.coins,
    required this.ownedCoins,
    required this.onToggleCoin,
    required this.onToggleMintMark,
  });

  @override
  Widget build(BuildContext context) {
    final userPrefsProvider = Provider.of<UserPreferencesProvider>(context);
    final coinMintProvider = Provider.of<CoinMintProvider>(context);

    // LOADING STATE
    if (coins == null) {
      return const Center(child: CircularProgressIndicator());
    }

    // EMPTY STATE
    if (coins!.isEmpty) {
      return const Center(child: Text('No coins available'));
    }

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 156,
        crossAxisCount: 2,
        crossAxisSpacing: AppSizes.p8,
        mainAxisSpacing: AppSizes.p8,
      ),
      padding: const EdgeInsets.all(AppSizes.p16),
      itemCount: coins!.length,
      itemBuilder: (context, index) {
        final coin = coins![index];
        final isOwned = ownedCoins.contains(coin.id);

        return FutureBuilder<int>(
          future: coinMintProvider.getOwnedMintCount(coin.id!),
          builder: (context, snapshot) {
            final count = snapshot.data ?? 0;
            return CoinCardComplex(
              mintOwnedCount:
                  (coin.country == CountryNames.GERMANY &&
                          userPrefsProvider.coinMints)
                      ? count.toString()
                      : null,
              countryImage:
                  coin.country == CountryNames.EU
                      ? "assets/country/${coin.description.split(' ').first.toLowerCase() == 'san' ? 'san_marino' : coin.description.split(' ').first.toLowerCase()}-flag.png"
                      : "assets/country/${coin.country.name.toLowerCase()}-flag.png",

              imageUrl: coin.image,
              isSelected: isOwned,
              onSelected: (selected) async {
                if (coin.country == CountryNames.GERMANY &&
                    userPrefsProvider.coinMints) {
                  await _handleGermanCoin(context, coinMintProvider, coin);
                } else {
                  onToggleCoin(coin.id!);
                }
              },
              size: getItemSizeForFilterView(coin.type),
              onTap: () async {
                final result = await context.push(
                  AppRoutes.coinsShowcase(coin),
                  extra: {'coin': coin, 'coins': coins, 'currentIndex': index},
                );
                if (result is bool && result != isOwned) {
                  onToggleCoin(coin.id!);
                }
              },
            );
          },
        );
      },
    );
  }

  Future<void> _handleGermanCoin(
    BuildContext context,
    CoinMintProvider coinMintProvider,
    Coin coin,
  ) async {
    // Get current mint marks for the coin
    final mints = await coinMintProvider.getMintMarksForCoin(coin.id!);
    final currentMints = mints.map((m) => m.mintMark).toList();

    // Show mint selection modal
    final selectedMints = await showMintSelectionModal(
      context,
      coin.id!,
      currentMints,
    );

    if (selectedMints != null) {
      // Handle the mints that need to be added or removed
      for (final mintMark in MintMark.values) {
        final hadMintBefore = currentMints.contains(mintMark);
        final hasNow = selectedMints.contains(mintMark);

        if (hadMintBefore && !hasNow) {
          // Remove mint mark
          await coinMintProvider.removeMintMark(coin.id!, mintMark);
        } else if (!hadMintBefore && hasNow) {
          // Add mint mark
          await coinMintProvider.addMintMark(coin.id!, mintMark);
        }
      }

      // If no mints are selected, remove the coin
      if (selectedMints.isEmpty && ownedCoins.contains(coin.id)) {
        onToggleCoin(coin.id!);
      }
      // If any mint is selected, ensure the coin is owned
      else if (selectedMints.isNotEmpty && !ownedCoins.contains(coin.id)) {
        onToggleCoin(coin.id!);
      }
    }
  }
}

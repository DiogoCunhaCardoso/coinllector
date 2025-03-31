import 'package:coinllector_app/models/coin.dart';
import 'package:coinllector_app/routing/routes.dart';
import 'package:coinllector_app/shared_components/coin_card_complex.dart';
import 'package:coinllector_app/themes/sizes.dart';
import 'package:coinllector_app/utils/get_coin_size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CoinsFilterCountryGrid extends StatelessWidget {
  final List<Coin>? coins;
  final Set<int> ownedCoins;
  final ValueChanged<int> onToggleCoin;

  const CoinsFilterCountryGrid({
    super.key,
    required this.coins,
    required this.ownedCoins,
    required this.onToggleCoin,
  });

  @override
  Widget build(BuildContext context) {
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
        mainAxisExtent: 152,
        crossAxisCount: 2,
        crossAxisSpacing: AppSizes.p8,
        mainAxisSpacing: AppSizes.p8,
      ),
      padding: const EdgeInsets.all(AppSizes.p16),
      itemCount: coins!.length,
      itemBuilder: (context, index) {
        final coin = coins![index];
        final isOwned = ownedCoins.contains(coin.id);

        return CoinCardComplex(
          countryImage:
              "assets/country/${coin.country.name.toLowerCase()}-flag.png",
          imageUrl: coin.image,
          isSelected: isOwned,
          onSelected: (selected) => onToggleCoin(coin.id),
          size: getItemSizeForFilterView(coin.type),
          onTap:
              () => context.push(
                AppRoutes.coinsShowcase(coin),
                extra: coin, // Pass the coin object as extra
              ),
        );
      },
    );
  }
}

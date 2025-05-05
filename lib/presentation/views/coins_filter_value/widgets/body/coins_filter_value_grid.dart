import 'package:coinllector_app/config/router/routes.dart';
import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/shared/components/coin_card_complex.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/utils/get_coin_size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CoinsFilterValueGrid extends StatelessWidget {
  final List<Coin>? coins;
  final Set<int> ownedCoins;
  final ValueChanged<int> onToggleCoin;
  // For commemorative list

  const CoinsFilterValueGrid({
    super.key,
    required this.coins,
    required this.ownedCoins,
    required this.onToggleCoin,
  });

  @override
  Widget build(BuildContext context) {
    // NULL
    if (coins == null) {
      return const Center(child: CircularProgressIndicator());
    }

    // EMPTY
    if (coins!.isEmpty) {
      return const Center(child: Text('No coins available'));
    }

    // UUI
    return GridView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(AppSizes.p16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 156,
        crossAxisCount: 2,
        crossAxisSpacing: AppSizes.p8,
        mainAxisSpacing: AppSizes.p8,
      ),
      itemCount: coins!.length,
      itemBuilder: (context, index) {
        final coin = coins![index];
        final isOwned = ownedCoins.contains(coin.id);

        return CoinCardComplex(
          imageUrl: coin.image,
          size: getItemSizeForFilterView(coin.type),
          isSelected: isOwned,
          onSelected: (selected) => onToggleCoin(coin.id!),
          countryImage:
              "assets/country/${coin.country.name.toLowerCase()}-flag.png",
          onTap: () async {
            final result = await context.push(
              AppRoutes.coinsShowcase(coin),
              extra: {'coin': coin, 'coins': coins, 'currentIndex': index},
            );

            // Handle ownership change from showcase screen
            if (result is bool && result != isOwned) {
              onToggleCoin(coin.id!);
            }
          },
        );
      },
    );
  }
}

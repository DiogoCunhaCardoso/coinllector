import 'package:coinllector_app/models/coin.dart';
import 'package:coinllector_app/routing/routes.dart';
import 'package:coinllector_app/themes/sizes.dart';
import 'package:coinllector_app/ui/coins/widgets/coin_card.dart';
import 'package:coinllector_app/utils/get_coin_size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CoinsFilterCountryGrid extends StatelessWidget {
  final List<Coin>? coins;

  const CoinsFilterCountryGrid({super.key, required this.coins});

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
        return CoinCard(
          imageUrl: coin.image,
          size: getItemSizeForCoinsView(coin),
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

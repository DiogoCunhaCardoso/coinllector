import 'package:coinllector_app/domain/entities/country.dart';
import 'package:coinllector_app/presentation/model/coin_display.dart';
import 'package:coinllector_app/config/router/routes.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/presentation/views/coins/widgets/coin_card.dart';
import 'package:coinllector_app/utils/get_coin_size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// coins_view_grid.dart
class CoinsViewGrid extends StatelessWidget {
  final List<dynamic> coins; // TODO will be of CoinDisplay

  const CoinsViewGrid({super.key, required this.coins});

  @override
  Widget build(BuildContext context) {
    if (coins.isEmpty) {
      return const Center(child: Text("No coins to show"));
    }

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 156,
        crossAxisCount: 2,
        crossAxisSpacing: AppSizes.p8,
        mainAxisSpacing: AppSizes.p8,
      ),
      padding: const EdgeInsets.all(AppSizes.p16),
      itemCount: coins.length,
      itemBuilder: (context, index) {
        final item = coins[index];

        if (item is CoinDisplay) {
          return CoinCard(
            imageUrl: item.image,
            size: getItemSizeForCoinsView(item),
            onTap: () => context.go(AppRoutes.coinsWithValue(item.type.name)),
          );
        } else if (item is Country) {
          return CoinCard(
            imageUrl: item.flagImage,
            size: getItemSizeForCoinsView(item),
            onTap: () => context.go(AppRoutes.coinsWithCountry(item.name.name)),
          );
        } else {
          return const Card(child: Center(child: Text("Unknown item type")));
        }
      },
    );
  }
}

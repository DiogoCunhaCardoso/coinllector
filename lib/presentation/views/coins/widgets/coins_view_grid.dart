import 'package:coinllector_app/domain/entities/country.dart';
import 'package:coinllector_app/presentation/model/coin_display.dart';
import 'package:coinllector_app/config/router/routes.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/presentation/views/coins/widgets/coin_card.dart';
import 'package:coinllector_app/utils/get_coin_size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CoinsViewGrid extends StatelessWidget {
  final List<dynamic>
  items; // Pode ser uma lista de ValueData ou Country // TODO: CoinDisplay in the future

  const CoinsViewGrid({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 152,
        crossAxisCount: 2,
        crossAxisSpacing: AppSizes.p8,
        mainAxisSpacing: AppSizes.p8,
      ),
      padding: const EdgeInsets.all(AppSizes.p16),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final coin = items[index];

        if (coin is CoinDisplay) {
          return CoinCard(
            imageUrl: coin.image,
            size: getItemSizeForCoinsView(coin),
            onTap: () => context.go(AppRoutes.coinsWithValue(coin.type.name)),
          );
        } else if (coin is Country) {
          return CoinCard(
            imageUrl: coin.flagImage,
            size: getItemSizeForCoinsView(coin),
            onTap: () => context.go(AppRoutes.coinsWithCountry(coin.name.name)),
          );
        } else {
          return Text("data");
        }
      },
    );
  }
}

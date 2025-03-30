import 'package:coinllector_app/routing/routes.dart';
import 'package:coinllector_app/themes/sizes.dart';
import 'package:coinllector_app/ui/coins/widgets/coin_card.dart';
import 'package:coinllector_app/ui/coins/data/value_data.dart';
import 'package:coinllector_app/utils/get_coin_size.dart';
import 'package:flutter/material.dart';
import 'package:coinllector_app/models/country.dart';
import 'package:go_router/go_router.dart';

class CoinsViewGrid extends StatelessWidget {
  final List<dynamic> items; // Pode ser uma lista de ValueData ou Country

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
        final item = items[index];

        if (item is ValueData) {
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
          return Text("data");
        }
      },
    );
  }
}

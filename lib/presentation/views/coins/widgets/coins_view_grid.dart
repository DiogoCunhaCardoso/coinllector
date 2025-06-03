import 'package:coinllector_app/presentation/model/coin_display.dart';
import 'package:coinllector_app/config/router/routes.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/presentation/views/coins/widgets/coin_card.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/utils/get_coin_size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// coins_view_grid.dart
class CoinsViewGrid extends StatelessWidget {
  final List<CoinDisplay> coins;
  final bool isCountry;

  const CoinsViewGrid({super.key, required this.coins, this.isCountry = false});

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

        return CoinCard(
          countryName: isCountry ? item.label : "",
          imageUrl: item.image,
          size:
              isCountry
                  ? 92
                  : getItemSizeForCoinsView(CoinType.values.byName(item.label)),
          onTap: () {
            final route =
                isCountry
                    ? AppRoutes.coinsWithCountry(item.label)
                    : AppRoutes.coinsWithValue(item.label);

            context.go(route);
          },
        );
      },
    );
  }
}

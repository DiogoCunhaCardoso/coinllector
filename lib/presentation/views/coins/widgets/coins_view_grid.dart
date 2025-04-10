import 'package:coinllector_app/domain/entities/country.dart';
import 'package:coinllector_app/presentation/model/coin_display.dart';
import 'package:coinllector_app/config/router/routes.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/presentation/views/coins/widgets/coin_card.dart';
import 'package:coinllector_app/utils/get_coin_size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CoinsViewGrid extends StatelessWidget {
  final Future<List<dynamic>> items;
  // Additional parameter for immediate display while loading
  final List<dynamic>? initialItems; // TODO will be of CoinDisplay

  const CoinsViewGrid({super.key, required this.items, this.initialItems});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: items,
      initialData: initialItems,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting &&
            initialItems == null) {
          return const Center(child: CircularProgressIndicator());
        }

        // Show error if loading failed
        if (snapshot.hasError) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline, size: 48, color: Colors.red),
                const SizedBox(height: AppSizes.p16),
                Text('Failed to load data: ${snapshot.error}'),
                const SizedBox(height: AppSizes.p16),
              ],
            ),
          );
        }

        // Get data from snapshot or fallback to empty list
        final coins = snapshot.data ?? [];

        // If we have data, show the grid
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 152,
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
                onTap:
                    () => context.go(AppRoutes.coinsWithValue(item.type.name)),
              );
            } else if (item is Country) {
              return CoinCard(
                imageUrl: item.flagImage,
                size: getItemSizeForCoinsView(item),
                onTap:
                    () =>
                        context.go(AppRoutes.coinsWithCountry(item.name.name)),
              );
            } else {
              return const Card(
                child: Center(child: Text("Unknown item type")),
              );
            }
          },
        );
      },
    );
  }
}

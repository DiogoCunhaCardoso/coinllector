import 'package:coinllector_app/themes/sizes.dart';
import 'package:coinllector_app/ui/coins/widgets/coin_card.dart';
import 'package:flutter/material.dart';
import 'package:coinllector_app/models/coin.dart';

class ContentGrid extends StatelessWidget {
  final List<Map<String, dynamic>> coins;
  final Function(String) onCoinTap;

  const ContentGrid({super.key, required this.coins, required this.onCoinTap});

  // Function to determine size based on coin type
  double _getCoinSize(String typeStr) {
    CoinType type = CoinType.values.byName(typeStr);
    const sizes = {
      CoinType.COMMEMORATIVE: 92.0,
      CoinType.TWO_EURO: 92.0,
      CoinType.ONE_EURO: 83.0,
      CoinType.FIFTY_CENT: 88.0,
      CoinType.TWENTY_CENT: 80.0,
      CoinType.TEN_CENT: 71.0,
      CoinType.FIVE_CENT: 76.0,
      CoinType.TWO_CENT: 67.0,
      CoinType.ONE_CENT: 58.0,
    };
    return sizes[type] ?? 92.0;
  }

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
      itemCount: coins.length,
      itemBuilder: (context, index) {
        String imageUrl = coins[index]["image"]!;
        String typeStr = coins[index]["type"]!;
        double size = _getCoinSize(typeStr);

        return CoinCard(
          imageUrl: imageUrl,
          size: size,
          onTap: () => onCoinTap(typeStr),
        );
      },
    );
  }
}

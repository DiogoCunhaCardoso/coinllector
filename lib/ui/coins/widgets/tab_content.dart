import 'package:coinllector_app/themes/sizes.dart';
import 'package:coinllector_app/ui/coins/widgets/coin_card.dart'; // Import CoinCard
import 'package:flutter/material.dart';

class CoinsContent extends StatelessWidget {
  final List<Map<String, String>> coins;
  final Function(String) onCoinTap;

  const CoinsContent({super.key, required this.coins, required this.onCoinTap});

  // Function to determine size based on coin type
  double _getCoinSize(String type) {
    const sizes = {
      "commemorative": 92.0,
      "2euro": 92.0,
      "1euro": 83.0,
      "50cent": 88.0,
      "20cent": 80.0,
      "10cent": 71.0,
      "5cent": 76.0,
      "2cent": 67.0,
      "1cent": 58.0,
    };
    return sizes[type] ?? 92.0; // Default size if type not found
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 140,
        crossAxisCount: 2,
        crossAxisSpacing: AppSizes.p8,
        mainAxisSpacing: AppSizes.p8,
      ),

      padding: const EdgeInsets.all(AppSizes.p16),
      itemCount: coins.length,
      itemBuilder: (context, index) {
        String imageUrl = coins[index]["image"]!;
        String type = coins[index]["type"]!;
        double size = _getCoinSize(type);

        return CoinCard(
          imageUrl: imageUrl,
          size: size,
          onTap: () => onCoinTap(type), // Pass the callback to CoinCard
        );
      },
    );
  }
}

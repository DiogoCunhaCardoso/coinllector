import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/presentation/model/coin_stats.dart';
import 'package:coinllector_app/utils/text_display.dart';
import 'package:flutter/material.dart';

class HighestCoinCard extends StatelessWidget {
  final CoinStats stats;
  final bool isCountry;

  const HighestCoinCard({
    super.key,
    required this.stats,
    this.isCountry = true,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppSizes.p16,
          horizontal: AppSizes.p24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(stats.image),
                ),
                SizedBox(width: AppSizes.p16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      isCountry
                          ? (stats.label.toUpperCase() != 'EU'
                              ? capitalizeFst(stats.label)
                              : stats.label)
                          : showcaseTitle(stats.label),
                    ),
                    Text(
                      "${stats.coinsOwned}/${stats.totalCoins}",
                      style: textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 52,
              height: 52,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Transform.scale(
                    scale: 1.4,
                    child: CircularProgressIndicator(
                      value: stats.collectionPercentage,
                      backgroundColor: colorScheme.secondary,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        colorScheme.primary,
                      ),
                      strokeWidth: 4,
                    ),
                  ),
                  Text(
                    "${(stats.collectionPercentage * 100).toInt()}%",
                    style: textTheme.labelSmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

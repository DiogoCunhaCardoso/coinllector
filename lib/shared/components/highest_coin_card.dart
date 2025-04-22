import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/presentation/model/country_coin_stats.dart';
import 'package:flutter/material.dart';

class HighestCoinCard extends StatelessWidget {
  final CountryCoinStats stats;

  const HighestCoinCard({super.key, required this.stats});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final double owned = stats.coinsOwned.toDouble();
    final double total = stats.totalCoins.toDouble();
    final double percentage = total > 0 ? owned / total : 0;

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
                  backgroundImage: AssetImage(stats.flagImage),
                ),
                SizedBox(width: AppSizes.p16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      stats.name.name,
                      style: textTheme.labelMedium!.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
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
            // Simplified circular progress with percentage
            SizedBox(
              width: 52,
              height: 52,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Transform.scale(
                    scale: 1.4,
                    child: CircularProgressIndicator(
                      value: percentage,
                      backgroundColor: colorScheme.secondary,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        colorScheme.primary,
                      ),
                      strokeWidth: 4,
                    ),
                  ),
                  Text(
                    "${(percentage * 100).toInt()}%",
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

import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:flutter/material.dart';

class ProfileStatsCard extends StatelessWidget {
  final String title;
  final String coinsOwned;
  final String totalCoins;

  const ProfileStatsCard({
    super.key,
    required this.title,
    required this.coinsOwned,
    required this.totalCoins,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final double percentage =
        double.parse(coinsOwned) / double.parse(totalCoins);

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppSizes.p16,
          horizontal: AppSizes.p24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: textTheme.labelMedium!.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                Text(
                  '$coinsOwned/$totalCoins',
                  style: textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 80,
              height: 80,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Transform.scale(
                    scale: 2,
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
                    style: textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
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

import 'package:coinllector_app/config/themes/colors.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/config/themes/typography.dart';
import 'package:flutter/material.dart';

class HighestCoinCard extends StatelessWidget {
  final String countryName;
  final String coinsOwned;
  final String totalCoins;
  final String image;

  const HighestCoinCard({
    super.key,
    required this.countryName,
    required this.coinsOwned,
    required this.totalCoins,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final double owned = double.tryParse(coinsOwned) ?? 0;
    final double total =
        double.tryParse(totalCoins) ?? 1; // Prevent division by zero
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
                CircleAvatar(radius: 20, backgroundImage: AssetImage(image)),
                SizedBox(width: AppSizes.p16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      countryName,
                      style: AppTextStyles.label.copyWith(
                        color: AppColors.onSurfaceVariant,
                      ),
                    ),
                    Text("$coinsOwned/$totalCoins", style: AppTextStyles.body),
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
                      backgroundColor: AppColors.secondary,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        AppColors.primary,
                      ),
                      strokeWidth: 4,
                    ),
                  ),
                  Text(
                    "${(percentage * 100).toInt()}%",
                    style: AppTextStyles.labelSmall,
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

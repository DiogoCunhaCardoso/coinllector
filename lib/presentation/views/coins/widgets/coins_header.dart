import 'package:flutter/material.dart';
import 'package:coinllector_app/shared/components/tab_button.dart';
import 'package:coinllector_app/config/themes/colors.dart';
import 'package:coinllector_app/config/themes/sizes.dart';

class CoinsHeader extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabChanged;

  final int coinsOwned;
  final int totalCoins;

  const CoinsHeader({
    super.key,
    required this.selectedIndex,
    required this.onTabChanged,
    required this.coinsOwned,
    required this.totalCoins,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(AppSizes.r24),
          bottomLeft: Radius.circular(AppSizes.r24),
        ),
        gradient: colorScheme.gradient,
      ),
      padding: const EdgeInsets.only(
        top: kToolbarHeight + 24,
        left: 20,
        right: 20,
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/logo.png"),
          const SizedBox(height: AppSizes.p24),
          Text(
            "Total Coins",
            style: textTheme.labelLarge!.copyWith(
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 4),
          RichText(
            text: TextSpan(
              style: textTheme.titleLarge,
              children: [
                TextSpan(text: "${coinsOwned.toString()}/"),
                TextSpan(text: totalCoins.toString()),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 52,
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.p6,
              vertical: AppSizes.p6,
            ),
            decoration: BoxDecoration(
              color: colorScheme.onSurface.withValues(alpha: 0.6),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TabButton(
                    text: "Value",
                    isSelected: selectedIndex == 0,
                    onPressed: () => onTabChanged(0),
                  ),
                ),
                const SizedBox(width: AppSizes.p8),
                Expanded(
                  child: TabButton(
                    text: "Country",
                    isSelected: selectedIndex == 1,
                    onPressed: () => onTabChanged(1),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

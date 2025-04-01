import 'package:flutter/material.dart';
import 'package:coinllector_app/shared_components/tab_button.dart';
import 'package:coinllector_app/themes/colors.dart';
import 'package:coinllector_app/themes/sizes.dart';
import 'package:coinllector_app/themes/typography.dart';

class Header extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabChanged;

  final int coinsOwned;
  final int totalCoins;

  const Header({
    super.key,
    required this.selectedIndex,
    required this.onTabChanged,
    required this.coinsOwned,
    required this.totalCoins,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(AppSizes.r24),
          bottomLeft: Radius.circular(AppSizes.r24),
        ),
        gradient: AppColors.gradient,
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
          const Text("Total Coins", style: AppTextStyles.label),
          const SizedBox(height: 4),
          RichText(
            text: TextSpan(
              style: AppTextStyles.bodyLarge,
              children: [
                TextSpan(text: "${coinsOwned.toString()}/"),
                TextSpan(text: totalCoins.toString()),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 52,
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
            decoration: BoxDecoration(
              color: AppColors.onSurface.withValues(alpha: 0.6),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TabButton(
                  text: "Value",
                  isSelected: selectedIndex == 0,
                  onPressed: () => onTabChanged(0),
                ),
                const SizedBox(width: AppSizes.p8),
                TabButton(
                  text: "Country",
                  isSelected: selectedIndex == 1,
                  onPressed: () => onTabChanged(1),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

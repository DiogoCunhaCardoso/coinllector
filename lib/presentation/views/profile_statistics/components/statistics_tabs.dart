import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/shared/components/tab_button.dart';
import 'package:flutter/material.dart';

class StatisticsTabs extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabChanged;

  const StatisticsTabs({
    super.key,
    required this.selectedIndex,
    required this.onTabChanged,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
      decoration: BoxDecoration(
        color: colorScheme.onSurfaceVariant,
        borderRadius: BorderRadius.circular(AppSizes.r8),
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
    );
  }
}

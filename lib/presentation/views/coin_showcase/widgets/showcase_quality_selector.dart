import 'package:coinllector_app/shared/components/tab_button.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:flutter/material.dart';

class ShowcaseQualitySelector extends StatelessWidget {
  final int selectedQualityIndex;
  final Function(int) onQualitySelected;

  const ShowcaseQualitySelector({
    super.key,
    required this.selectedQualityIndex,
    required this.onQualitySelected,
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
        children: List.generate(
          3,
          (index) => Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: index == 0 ? 0 : AppSizes.p8),
              child: TabButton(
                text: ["Poor", "Average", "Good"][index],
                isSelected: selectedQualityIndex == index,
                onPressed: () => onQualitySelected(index),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

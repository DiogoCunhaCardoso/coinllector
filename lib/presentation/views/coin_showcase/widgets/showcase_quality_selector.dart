import 'package:coinllector_app/shared/components/tab_button.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:flutter/material.dart';

class ShowcaseQualitySelector extends StatelessWidget {
  final int selectedQualityIndex;
  final Function(int) onQualitySelected;
  final bool isDisabled;

  const ShowcaseQualitySelector({
    super.key,
    required this.selectedQualityIndex,
    required this.onQualitySelected,
    required this.isDisabled,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return AnimatedOpacity(
      duration: Durations.medium1,
      opacity: isDisabled ? 0.6 : 1.0,
      child: Container(
        height: 48,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.p6,
          vertical: AppSizes.p6,
        ),
        decoration: BoxDecoration(
          color: colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(AppSizes.r8),
        ),
        child: Row(
          children: List.generate(
            3,
            (index) => Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: index == 0 ? 0 : AppSizes.p8),
                child: TabButton(
                  isUnselectedOnShowcase: true,
                  text: ["Poor", "Average", "Good"][index],
                  isSelected: selectedQualityIndex == index,
                  onPressed: () {
                    if (isDisabled) {
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Please add the coin first to set its quality.',
                          ),
                        ),
                      );
                    } else {
                      onQualitySelected(index);
                    }
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

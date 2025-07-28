import 'package:coinllector_app/shared/components/tab_button.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/shared/enums/coin_quality_enum.dart';
import 'package:flutter/material.dart';

class ShowcaseQualitySelector extends StatelessWidget {
  final int selectedQualityIndex;
  final Function(int) onQualitySelected;
  final bool isDisabled;
  final List<CoinQuality>? allowedQualities;

  const ShowcaseQualitySelector({
    super.key,
    required this.selectedQualityIndex,
    required this.onQualitySelected,
    required this.isDisabled,
    this.allowedQualities,
  });

  bool _isQualityAllowed(CoinQuality quality) {
    return allowedQualities == null || allowedQualities!.contains(quality);
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return AnimatedOpacity(
      duration: Durations.medium1,
      opacity: isDisabled ? 0.6 : 1.0,
      child: Container(
        padding: const EdgeInsets.all(AppSizes.p6),
        decoration: BoxDecoration(
          color: colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(AppSizes.r8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // First row (indexes 0–2)
            SizedBox(
              height: 40,
              child: Row(
                children: List.generate(3, (index) {
                  final quality = CoinQuality.values[index];
                  final isAllowed = _isQualityAllowed(quality);
                  return Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? 0 : AppSizes.p8,
                      ),
                      child: TabButton(
                        isUnselectedOnShowcase: true,
                        text: quality.displayName,
                        isSelected: selectedQualityIndex == index,
                        isDisabled: false,
                        isVisuallyDisabled: !isAllowed,
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
                          } else if (!isAllowed) {
                            ScaffoldMessenger.of(context).clearSnackBars();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'This quality is not available for this coin.',
                                ),
                              ),
                            );
                          } else {
                            onQualitySelected(index);
                          }
                        },
                      ),
                    ),
                  );
                }),
              ),
            ),

            const SizedBox(height: AppSizes.p8),

            // Second row (indexes 3–5)
            SizedBox(
              height: 40,
              child: Row(
                children: List.generate(3, (index) {
                  final realIndex = index + 3;
                  final quality = CoinQuality.values[realIndex];
                  final isAllowed = _isQualityAllowed(quality);
                  return Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? 0 : AppSizes.p8,
                      ),
                      child: TabButton(
                        isUnselectedOnShowcase: true,
                        text: quality.displayName,
                        isSelected: selectedQualityIndex == realIndex,
                        isDisabled: false,
                        isVisuallyDisabled: !isAllowed,
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
                          } else if (!isAllowed) {
                            ScaffoldMessenger.of(context).clearSnackBars();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'This coin was not minted in that quality.',
                                ),
                              ),
                            );
                          } else {
                            onQualitySelected(realIndex);
                          }
                        },
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
